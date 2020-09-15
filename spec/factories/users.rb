FactoryBot.define do
    factory :user do
      nickname              {"abe"}
      email                 {"kkk@gmail.com"}  
      last_name             {"漢字ひらがなカタカナ"}
      first_name            {"漢字ひらがなカタカナ"}
      last_name_kana        {"カナ"}
      first_name_kana       {"カナ"}
      birth_date            {"1999-02-23"}
      password              {"0a0b0c0"}
      password_confirmation {password}
    end
  end