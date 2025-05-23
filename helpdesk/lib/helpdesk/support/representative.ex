defmodule Helpdesk.Support.Representative do
  use Ash.Resource, domain: Helpdesk.Support, data_layer: AshPostgres.DataLayer

  postgres do
    table "representatives"
    repo Helpdesk.Repo
  end

  actions do
    defaults [:read]

    create :create do
      accept [:name]
    end
  end

  attributes do
    uuid_primary_key :id

    attribute :name, :string do
      public? true
    end
  end

  relationships do
    has_many :tickets, Helpdesk.Support.Ticket
  end
end
