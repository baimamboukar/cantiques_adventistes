// @CupertinoAutoRouter        
// @AdaptiveAutoRouter        
// @CustomAutoRouter        
@MaterialAutoRouter(        
  replaceInRouteName: 'Page,Route',        
  routes: <AutoRoute>[        
    AutoRoute(page: BookListPage, initial: true),        
    AutoRoute(page: BookDetailsPage),        
  ],        
)        
class $AppRouter {}