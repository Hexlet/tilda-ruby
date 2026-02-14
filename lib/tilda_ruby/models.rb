# frozen_string_literal: true

module TildaRuby
  [TildaRuby::Internal::Type::BaseModel, *TildaRuby::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, TildaRuby::Internal::AnyHash) } }
  end

  TildaRuby::Internal::Util.walk_namespaces(TildaRuby::Models).each do |mod|
    case mod
    in TildaRuby::Internal::Type::Enum | TildaRuby::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  TildaRuby::Internal::Util.walk_namespaces(TildaRuby::Models)
                           .lazy
                           .grep(TildaRuby::Internal::Type::Union)
                           .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  Error = TildaRuby::Models::Error

  GetpageexportRetrieveParams = TildaRuby::Models::GetpageexportRetrieveParams

  GetpagefullexportRetrieveParams = TildaRuby::Models::GetpagefullexportRetrieveParams

  GetpagefullRetrieveParams = TildaRuby::Models::GetpagefullRetrieveParams

  GetpageRetrieveParams = TildaRuby::Models::GetpageRetrieveParams

  GetpageslistRetrieveParams = TildaRuby::Models::GetpageslistRetrieveParams

  GetprojectinfoRetrieveParams = TildaRuby::Models::GetprojectinfoRetrieveParams

  GetprojectslistListParams = TildaRuby::Models::GetprojectslistListParams

  ImageMapping = TildaRuby::Models::ImageMapping
end
