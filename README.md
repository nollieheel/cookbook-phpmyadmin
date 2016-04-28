# cookbook-phpmyadmin-cookbook

Just downloads the PHPMyadmin files and creates a config file. Does not install PHP or any webserver and stuff.

## Supported Platforms

Ubuntu 14.04 (Might probably work on others, too, but not tested)

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['cookbook-phpmyadmin']['version']</tt></td>
    <td>String</td>
    <td>Version of PHPMyAdmin to install</td>
    <td><tt>'4.6.0'</tt></td>
  </tr>
  <tr>
    <td><tt>['cookbook-phpmyadmin']['install']['doc_root']</tt></td>
    <td>String</td>
    <td>Where to unzip the PHPMyAdmin files</td>
    <td><tt>'/var/www/pma'</tt></td>
  </tr>
  <tr>
    <td><tt>['cookbook-phpmyadmin']['install']['user']</tt></td>
    <td>String</td>
    <td>Who should own the files</td>
    <td><tt>'root'</tt></td>
  </tr>
  <tr>
    <td><tt>['cookbook-phpmyadmin']['install']['group']</tt></td>
    <td>String</td>
    <td>Group of the owner</td>
    <td><tt>'root'</tt></td>
  </tr>
  <tr>
    <td><tt>['cookbook-phpmyadmin']['config']['db_map']</tt></td>
    <td>Array</td>
    <td>An array of hashes that lists the database servers this PHPMyAdmin would serve. See the default attribute file for examples.</td>
    <td><tt>[]</tt></td>
  </tr>
  <tr>
    <td><tt>['cookbook-phpmyadmin']['config']['statements']</tt></td>
    <td>Array</td>
    <td>An array of declaration strings that you might want to add in the config file</td>
    <td><tt>[]</tt></td>
  </tr>
</table>

## Usage

### cookbook-phpmyadmin::default

Include `cookbook-phpmyadmin` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[cookbook-phpmyadmin::default]"
  ]
}
```

## License and Authors

Author:: Earth U (<iskitingbords@gmail.com>)
