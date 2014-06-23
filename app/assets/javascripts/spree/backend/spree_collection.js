// Placeholder manifest file.
// the installer will append this file to the app vendored assets here: vendor/assets/javascripts/spree/backend/all.js'
$.fn.productAutocompleteSingle = function () {
  'use strict';

  this.select2({
    minimumInputLength: 3,
    initSelection: function (element, callback) {
      $.get(Spree.routes.product_search, {
        ids: element.val().split(',')
      }, function (data) {
        callback(data.products);
      });
    },
    ajax: {
      url: Spree.routes.product_search,
      datatype: 'json',
      data: function (term, page) {
        return {
          q: {
            name_cont: term,
            sku_cont: term
          },
          m: 'OR',
          token: Spree.api_key
        };
      },
      results: function (data, page) {
        var products = data.products ? data.products : [];
        return {
          results: products
        };
      }
    },
    formatResult: function (product) {
      return product.id + ' ' + product.name;
    },
    formatSelection: function (product) {
      return product.id + ' ' + product.name;
    }
  });
};

$(document).ready(function () {
  $('.product_picker_single').productAutocompleteSingle();
});

$.fn.taxonAutocompleteSingle = function () {
  'use strict';

  this.select2({
    minimumInputLength: 3,
    initSelection: function (element, callback) {
      $.get(Spree.routes.taxons_search, {
        ids: element.val().split(',')
      }, function (data) {
        callback(data.taxons);
      });
    },
    ajax: {
      url: Spree.routes.taxons_search,
      datatype: 'json',
      data: function (term, page) {
        return {
          q: {
            name_cont: term,
            sku_cont: term
          },
          m: 'OR',
          token: Spree.api_key
        };
      },
      results: function (data, page) {
        var taxons = data.taxons ? data.taxons : [];
        return {
          results: taxons
        };
      }
    },
    formatResult: function (taxon) {
      return taxon.id + ' ' + taxon.name;
    },
    formatSelection: function (taxon) {
      return taxon.id + ' ' + taxon.name;
    }
  });
};

$(document).ready(function () {
  $('.taxon_picker_single').taxonAutocompleteSingle();
});