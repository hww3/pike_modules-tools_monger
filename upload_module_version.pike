

int main(int argc, array(string) argv)
{
  object m = Tools.Monger.MongerDeveloper();

  object in = Stdio.FILE("stdin");

  Stdio.stdout.write("Username: ");
  string user = in->gets();
  Stdio.stdout.write("Password: ");
  
  in->tcsetattr((["ECHO": 0]));
  string password = in->gets();
  in->tcsetattr((["ECHO": 1]));
  Stdio.stdout.write("\n");

  return 0;
}
