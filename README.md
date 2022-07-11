backend for sinatra-react fullstack app


START SERVER

    RUN  #bundle exec rake db:migrate
    RUN  #bundle exec rake server


CLOSE SERVER
#localhost:9292
    RUN lsof -i tcp:9292
response:
COMMAND  PID USER ....
ruby    1234 root ....

    Run kill -9 1234 
