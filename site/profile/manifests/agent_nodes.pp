class profile::agent_nodes{
  include dockeragent
  dockeragent::node { 'web.puppet.local':}
  dockeragent::node { 'db.puppet.local':}
}
