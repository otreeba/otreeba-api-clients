import * as api from './api/api';
import * as angular from 'angular';

const apiModule = angular.module('api', [])
.service('BrandsApi', api.BrandsApi)
.service('EdiblesApi', api.EdiblesApi)
.service('ExtractsApi', api.ExtractsApi)
.service('FlowersApi', api.FlowersApi)
.service('ProductsApi', api.ProductsApi)
.service('SeedCompaniesApi', api.SeedCompaniesApi)
.service('StrainsApi', api.StrainsApi)
.service('StudiesApi', api.StudiesApi)

export default apiModule;
