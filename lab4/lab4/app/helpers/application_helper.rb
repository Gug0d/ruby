module ApplicationHelper

  # Генерирует полный заголовок страницы
  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"

    title = if page_title.empty?
              base_title
            else
              "#{page_title} | #{base_title}"
            end

    # Подсчёт количества пробелов
    @spaces_in_title = title.count(" ")
св
    # Выводим в лог сервера (rails server)
    Rails.logger.info "NUMBER OF SPACES IN TITLE: #{@spaces_in_title}"

    title
  end

end
