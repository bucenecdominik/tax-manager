from djoser.serializers import UserCreateSerializer as DjoserUserCreateSerializer
from djoser.serializers import UserSerializer as DjoserUserGetSerializer

class AuthUserCreateSerializer(DjoserUserCreateSerializer):
    class Meta(DjoserUserCreateSerializer.Meta):
        fields = ['id',  'first_name', 'last_name', 'email', 'username', 'password',]

    def save(self, **kwargs):
        self.validated_data['username'] = self.validated_data['email']
        return super().save(**kwargs)


class AuthUserGetSerializer(DjoserUserGetSerializer):
    class Meta(DjoserUserCreateSerializer.Meta):
        fields = ['id',  'first_name', 'last_name', 'email', 'username',]