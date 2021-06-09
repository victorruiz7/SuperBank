import smtplib
from email.mime.text import MIMEText

smtp_adress = "smpt-mail.outlook.com" # smpt server adresss entered
smtp_port = 587

user = "xxxx@outlook.com"
password = "pass"

send_adress = ["aaaa@greenanimalsbank.com"]

subject = "Mail' Subject"

content = """" This is the mail content what shoul be like..<br><br>
           <div style = "color:red; font - weight :bold"> </div>
          """
try:
    mail = MIMEText(content,"html","utf - 8")

    mail["From"] = user
    mail["Subject"] = subject
    mail["To"] = send_adress

    mail = mail.as_string()

    print("Process Continues")

    s = smtplib.SMTP(smtp_adress, smtp_port)

    s.starttls()
    s.login(user,password)

    s.sendmail(user,send_adress,mail)
    print("Connected")
except Exception as e:
    print(str(e))


