class profile::agent_nodes{
  include docketagent
  docketagent::node { 'web.puppet.local':}
  docketagent::node { 'db.puppet.local':}
}
