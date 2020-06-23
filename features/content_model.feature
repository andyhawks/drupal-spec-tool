@api
Feature: Content model
  In order to enter structured content into my site
  As a content editor
  I want to have content entity types that reflect my content model.

  Scenario: Bundles
    Then exactly the following content entity type bundles should exist
      | Name         | Machine name    | Type              | Description                                                                   |
      | Audio file   | audio_file      | Media type        | A locally hosted audio file, such as an MP3.                                  |
      | Banner       | banner          | Custom block type | Contains text over a large image.                                             |
      | Basic page   | page            | Content type      | Use <em>basic pages</em> for your static content, such as an 'About us' page. |
      | Document     | document        | Media type        | A locally hosted document, such as a PDF.                                     |
      | Google Map   | google_map      | Custom block type | Displays a Google map.                                                        |
      | Image        | image           | Media type        | Locally hosted images.                                                        |
      | Instagram    | instagram       | Media type        | Instagram posts.                                                              |
      | Landing page | landing_page    | Content type      | A special page with its own one-off layout and content.                       |
      | Slideshow    | media_slideshow | Custom block type | A slideshow or carousel of media items.                                       |
      | Text         | text            | Custom block type | A text block contains a title and a body.                                     |
      | Tweet        | tweet           | Media type        | Represents a tweet.                                                           |
      | Video        | video           | Media type        | A video hosted by YouTube or Vimeo.                                           |
      | Video file   | video_file      | Media type        | A locally hosted video file                                                   |

  Scenario: Fields
    Then exactly the following fields should exist
      | Bundle                         | Field label           | Machine name             | Field type                           | Required | Cardinality | Form widget               | Translatable | Help text                                                                                                                |
      | Audio file (Media type)        | Audio file            | field_media_audio_file   | File                                 | Required | 1           | File                      | Translatable |                                                                                                                          |
      | Audio file (Media type)        | Show in media library | field_media_in_library   | Boolean                              |          | 1           | Single on/off checkbox    |              |                                                                                                                          |
      | Banner (Custom block type)     | Title                 | field_title              | Text (plain)                         |          | 1           | Textfield                 |              |                                                                                                                          |
      | Banner (Custom block type)     | Summary               | field_summary            | Text (plain, long)                   |          | 1           | Text area (multiple rows) |              |                                                                                                                          |
      | Banner (Custom block type)     | Link                  | field_link               | Link                                 |          | 1           | Link                      |              |                                                                                                                          |
      | Banner (Custom block type)     | Image                 | field_banner_image       | Image                                | Required | 1           | Image                     |              |                                                                                                                          |
      | Basic page (Content type)      | Body                  | body                     | Text (formatted, long, with summary) |          | 1           | Text area with a summary  | Translatable |                                                                                                                          |
      | Basic page (Content type)      | Layout                | layout_selection         | Entity reference                     |          | 1           | Select list               | Translatable |                                                                                                                          |
      | Basic page (Content type)      | Meta tags             | field_meta_tags          | Meta tags                            |          | 1           | Advanced meta tags form   |              |                                                                                                                          |
      | Document (Media type)          | Document              | field_document           | File                                 | Required | 1           | File                      |              |                                                                                                                          |
      | Document (Media type)          | Show in media library | field_media_in_library   | Boolean                              |          | 1           | Single on/off checkbox    | Translatable |                                                                                                                          |
      | Google Map (Custom block type) | Location              | field_map_location       | Text (plain)                         | Required | 1           | Textfield                 |              | Enter a location that is recognizable by Google Maps, e.g. "33 School St., Wayland MA" or "Union Station, Worcester MA". |
      | Image (Media type)             | Image                 | image                    | Image                                | Required | 1           | Image                     |              |                                                                                                                          |
      | Image (Media type)             | Show in media library | field_media_in_library   | Boolean                              |          | 1           | Single on/off checkbox    |              |                                                                                                                          |
      | Instagram (Media type)         | Instagram post        | embed_code               | Text (plain, long)                   | Required | 1           | Text area (multiple rows) |              | Paste media post URL or embed code.                                                                                      |
      | Instagram (Media type)         | Show in media library | field_media_in_library   | Boolean                              |          | 1           | Single on/off checkbox    |              |                                                                                                                          |
      | Landing page (Content type)    | Description           | body                     | Text (formatted, long, with summary) |          | 1           | Text area with a summary  | Translatable | A description of this page, for use in teasers and lists of content.                                                     |
      | Landing page (Content type)    | Meta tags             | field_meta_tags          | Meta tags                            |          | 1           | Advanced meta tags form   | Translatable |                                                                                                                          |
      | Landing page (Content type)    | Layout                | layout_builder__layout   | Layout Section                       |          | Unlimited   | -- Disabled --            |              |                                                                                                                          |
      | Landing page (Content type)    | Layout                | layout_selection         | Entity reference                     |          | 1           | Select list               | Translatable |                                                                                                                          |
      | Slideshow (Custom block type)  | Media items           | field_slideshow_items    | Entity reference                     | Required | Unlimited   | Media library             |              |                                                                                                                          |
      | Text (Custom block type)       | Body                  | body                     | Text (formatted, long, with summary) |          | 1           | Text area with a summary  | Translatable |                                                                                                                          |
      | Tweet (Media type)             | Tweet                 | embed_code               | Text (plain, long)                   | Required | 1           | Text area (multiple rows) |              | Paste tweet's URL or embed code.                                                                                         |
      | Tweet (Media type)             | Show in media library | field_media_in_library   | Boolean                              |          | 1           | Single on/off checkbox    |              |                                                                                                                          |
      | Video (Media type)             | Show in media library | field_media_in_library   | Boolean                              |          | 1           | Single on/off checkbox    |              |                                                                                                                          |
      | Video (Media type)             | Video URL             | field_media_oembed_video | Text (plain)                         | Required | 1           | oEmbed URL                | Translatable |                                                                                                                          |
      | Video file (Media type)        | Show in media library | field_media_in_library   | Boolean                              |          | 1           | Single on/off checkbox    |              |                                                                                                                          |
      | Video file (Media type)        | Video file            | field_media_video_file   | File                                 | Required | 1           | File                      | Translatable |                                                                                                                          |
