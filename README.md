# EntraID_RBAC_AKS
Cluster AKS com autenticação no Azure Entra ID + Azure RBAC

## Autenticaçãodo Azure AD com Azure RBAC
O modelode Autenticaçãodo Azure AD com Azure RBAC estendea integraçãodo Azure AD para incluiro RBAC do Azure.

Os usuários autenticam-se com suas credenciais do Azure AD e têm permissões de acesso controladas pelo Azure RBAC, que é aplicado em nível de assinatura ou de recursos do Azure.
Este modelo é adequado para cenários onde você deseja utilizar o Azure AD para gerenciar identidades e acesso não apenas no AKS, mas também em outros serviços do Azure.

Como Funciona:
Os usuários fornecem suas credenciais do Azure AD para autenticação para os serviçosdo Azure, incluindoo AKS.

O Azure RBAC é usado para definir permissões de acesso em nível de assinatura ou de recursos do Azure, controlando quem pode fazer o quê em seu ambiente do AKS e em outros recursos do Azure.
 
