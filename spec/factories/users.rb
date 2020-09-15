FactoryBot.define do
    factory :user do
      nickname              {"abe"}
      email                 {"kkk@gmail.com"}  
      last_name             {"abc"}
      first_name            {"abc"}
      last_name_kana        {"abc"}
      first_name_kana       {"abc"}
      birth_date            {"1999-02-23"}
      password              {"0a0b0c0"}
      password_confirmation {password}
    end
  end