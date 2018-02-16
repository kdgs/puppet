class profile::agent_nodes{
  include dockeragent
  docketagent::node { 'web.puppet.local':}
  docketagent::node { 'db.puppet.local':}
}
