from django.test import TestCase

class SimpleTestCase(TestCase):
    def test_simple_math(self):
        self.assertEqual(2, 1+1)