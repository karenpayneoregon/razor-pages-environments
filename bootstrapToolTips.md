# Using Bootstrap 5 tool-tips

If you read the [docs](https://getbootstrap.com/docs/5.2/components/tooltips/) there are still countless questions on the web indicating they can not get tool-tips to work.

1. Install popper.js
1. Include popper before bootstrap  **figure 1**
1. Activate[^1] tooltips *as per the docs they are expensive*  **figure 2**


**Figure** :one:
```html
<script src="~/lib/jquery/dist/jquery.min.js"></script>
<script src="~/lib/popper.js/umd/popper.js"></script>
<script src="~/lib/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="~/js/site.js" asp-append-version="true"></script>
```

**Figure**  :two:

```html
<script>
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
    var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
        return new bootstrap.Tooltip(tooltipTriggerEl)
    })
</script>
```

[^1]: Older versions of Bootstrap tooltips activation is slightly different than with Bootstrap 5 and will not work.