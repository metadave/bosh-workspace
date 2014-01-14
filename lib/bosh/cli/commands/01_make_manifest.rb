require "bosh/manifests"

module Bosh::Cli::Command
  class Manifests < Base
    include Bosh::Cli::Validation
    include Bosh::Manifests

    usage "manifests"
    desc "Show the list of available manifests"
    def manifests
      setup_manifest_manager

      nl
      say(@manifest_manager.to_table)
      nl
    end

    usage "build manifest"
    desc "Create manifest (assumes current directory to be a manifests repo)"
    def build_manifest(name)
      setup_manifest_manager
      manifest = @manifest_manager.find(name)
      result_path = Bosh::Manifests::ManifestBuilder.build(manifest, work_dir)
      say("Manifest build succesfull: '#{result_path}'")
    end

    # Hack to unregister original deployment command
    Bosh::Cli::Config.instance_eval("@commands.delete('deployment')")

    usage "deployment"
    desc "Get/set current deployment"
    def deployment(name=nil)
      say("test")
    end

    private

    def setup_manifest_manager
      @manifest_manager = Bosh::Manifests::ManifestManager.discover(work_dir)
      @manifest_manager.validate_manifests
    end
  end
end
