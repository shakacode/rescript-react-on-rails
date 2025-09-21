# 1.1.0
Add React on Rails 16 and ReScript 11 compatibility.

**Added:**
- Support for React on Rails 16.x (including 16.0.1-rc.2)
- Support for ReScript 11.x
- Support for @rescript/react 0.11.x

**Changed:**
- Expanded peer dependency ranges:
  - `react-on-rails`: `^10.1.3 || ^14.0.0 || ^16.0.0` (was `^10.1.3`)
  - `@rescript/react`: `^0.10.3 || ^0.11.0` (was `^0.10.3`)
  - `rescript`: `^9.1.4 || ^10.0.0 || ^11.0.0` (was `^9.1.4 || ^10.0.0`)

**Technical:**
- Fully tested with React on Rails 16.0.1-rc.2 in react-webpack-rails-tutorial
- Server-side rendering compatibility maintained
- Backward compatibility preserved for all existing supported versions

# 1.0.1
Fix package name.

# 1.0.0
Stable.

# 0.2.0
Update `bs-platform` to `3.0.0`.

# 0.1.0
Add `defaultContext` type.

# 0.0.1
Initial release.
