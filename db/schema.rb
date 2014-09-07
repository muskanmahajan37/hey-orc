Orchestrate::Rails::Schema.define_collection(
  :name           => 'locations',
  :classname      => 'Location',
  :properties     => [ :Name, :City, :State ],
  :event_types    => [ :comments ]
)

Orchestrate::Rails::Schema.define_event_type(
  :collection => 'locations',
  :event_type => :comments,
  :properties => [ :User, :Comment ]
)
