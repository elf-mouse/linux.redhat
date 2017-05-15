## Configure GitHub web hooks

### Obtain web hook URL

- Go to `http://localhost:8080`.
- Manage Jenkins -> Configure System
    - Under "GitHub" section, do the following.
        - Click "Advanced" button.
        - Tick "Specify another hook url for GitHub configuration" tickbox and obtain URL `http://your-jenkins-domain.com:8080/github-webhook/` somewhere then untick it again.
        - Exit without saving.

### Enable web hook URL in GitHub

- Go to your GitHub repository.
- Click "Settings" tab.
- Click "Webhooks" menu option.
- Click "Add webhook" button.
- Type `http://your-jenkins-domain.com/ghprbhook/` into "Payload URL" field. Pay attention to the difference with the original web hook URL we obtained above!!!
- Select `x-www-form-urlencoded` in "Content Type" field.
- Tick "Let me select individual events." option and tick just `Issue comment`, `Pull request` and `Push` options.
- Click "Add webhook" button.

If you see a green tick icon next to the webhook URL after refreshing the page means the link is working. If you click the link and scroll to the bottom of the page, you'll see GitHub and Jenkins communication details under "Recent Deliveries" section.

### Enable Jenkins (GitHub) plugin service

- Go to your GitHub repository.
- Click "Settings" tab.
- Click "Integrations & services" menu option.
- Click "Add service" button and find `Jenkins (GitHub plugin)` service.
- Type `http://your-jenkins-domain.com/github-webhook/` into "Payload URL" field. Pay attention to the difference with the original web hook URL we obtained above!!!
- Click "Add service" button.
