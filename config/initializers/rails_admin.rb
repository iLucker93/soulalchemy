RailsAdmin.config do |config|

  ### Popular gems integration

  # == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  # == Cancan ==
  config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model News do
    label_plural "Добавить новость"
    navigation_label "Новости"
    edit do
      field :title
      field :desc, :ck_editor
      field :image, :carrierwave
      field :tag_list do
        html_attributes do
          {:style => "width:90%"}
        end
      end
    end
  end

  config.model Article do
    edit do
      field :title
      field :desc, :ck_editor
      field :image, :carrierwave
      field :tag_list do
        html_attributes do
          {:style => "width:90%"}
        end
      end
    end
  end

  config.model Worker do
    edit do
      field :name
      field :role
      field :desc, :ck_editor
      field :image, :carrierwave
    end
  end

end
