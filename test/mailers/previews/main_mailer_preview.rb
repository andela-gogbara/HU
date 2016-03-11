# Preview all emails at http://localhost:3000/rails/mailers/main_mailer
class MainMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/main_mailer/notify_question_author
  def notify_question_author
    question = Question.create(email: "sengodwin@gmail.com", body: "Test content")
    answer = Answer.create(email: "godwin.oniusofien@andela.com", body: "Test answer")
    question.answers << answer
    mail = MainMailer.notify_question_author(answer)
  end

end
