import 'address_component.dart';
import 'geometry.dart';
import 'photo.dart';

class PlaceDetailModel {
  List<AddressComponent>? addressComponents;
  String? adrAddress;
  String? formattedAddress;
  Geometry? geometry;
  String? icon;
  String? iconBackgroundColor;
  String? iconMaskBaseUri;
  String? name;
  List<Photo>? photos;
  String? placeId;
  String? reference;
  List<String>? types;
  String? url;
  num? utcOffset;
  String? vicinity;

  PlaceDetailModel({
    this.addressComponents,
    this.adrAddress,
    this.formattedAddress,
    this.geometry,
    this.icon,
    this.iconBackgroundColor,
    this.iconMaskBaseUri,
    this.name,
    this.photos,
    this.placeId,
    this.reference,
    this.types,
    this.url,
    this.utcOffset,
    this.vicinity,
  });

  factory PlaceDetailModel.fromJson(Map<String, dynamic> json) {
    return PlaceDetailModel(
      addressComponents: (json['address_components'] as List<dynamic>?)
          ?.map((e) => AddressComponent
              .fromAddressComponentsLongNameShortNameTypesLocalityPoliticalLongNameShortNameTypesPostalTownLongNameShortNameTypesAdministrativeAreaLevel2PoliticalLongNameShortNameTypesAdministrativeAreaLevel1PoliticalLongNameShortNameGbTypesCountryPoliticalLongNameSo24ShortNameSo24TypesPostalCodePrefixPostalCodeAdrAddressSpanClassExtendedAddressSpanSpanClassLocalitySpanSpanClassPostalCodeSo24SpanSpanClassCountryNameSpanFormattedAddressSo24GeometryLocationLat510856236Lng11655575ViewportNortheastLat5109390680779035Lng1156751367495029SouthwestLat5107949290762961Lng1181399867551702IconHttpsMapsGstaticComMapfilesPlaceApiIconsV1Png71Geocode71PngIconBackgroundColor7B9Eb0IconMaskBaseUriHttpsMapsGstaticComMapfilesPlaceApiIconsV2GenericPinletNamePhotosHeight2156HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102162864456860492810JulieMckayAPhotoReferenceATplDJbqPgTrHjAljzQbTv1zSOiCgb4sLhlGuZec6iceDu8hMpY7iAtKMdGiaAqr3ra0fs8VzFn3zlGmioLtmWkvJVf00kYw5aD3TExJKzEeXylDNk6uEe6aipT9k2F6AKaGzx7qIenTUnGZaFjYnXq7v0YiCw0Mqj9qBkvopoLuQwWidth2942Height3120HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib114545944942417140633GordonPashaAPhotoReferenceATplDJaKcwaFIze2tYkHke0r2hgBkszqC3wOvPeQoCjmWKmRc0DeXJdPpMncmpv322PnucMfi5Moa96I33X8PhxRpfykDzvlxH1jTgIc0MreqO0jjWf6Tl3CwOjQCR4pRLvaIwEfYZflwWx43As6whvfzcL3MjkGvXmZvh6HXqS0Width4160Height3036HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102171268675022041984MikeEdwardsAPhotoReferenceATplDjZtwdhcq7dLeJtXzbZe3I7x2LgrjNhQzCetT033dusKl0v866LhIyM9DygPbV14nWkmjycf0D3pJONimDWxUdJdozqntJPlpXpwspUyL142hU5Li0iTxJdGcBf2FkpLxtNbZsk2qJlvrnFo560zwKrR6rGOs0Asv2k7Gy1BpeWidth4048Height3264HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102860324100270960211EpWinfieldAPhotoReferenceATplDJauTcJb2izHksHvEcWc7xMZcK5btVZeCj1K9G4Cvul3w1yONrzGyCLuXtcuNXa6gko9LrViI81rLMf4LatPryivjcKxThJ1llaexy1togX6arv3eNidyzsy6R0k34vJjk0SiJ6ySMvOzShiuxA4WGjj2RbcXx0wx9Th8BKg6lolFmWidth1836Height3264HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102860324100270960211EpWinfieldAPhotoReferenceATplDJbMOiKcVkQ0ArFicNjP9BwhPfmN6hr7Z8Vl8unwiu6OampmkMEdnRckGowY1YUurrvQc131OyCDmkssKswOn68CqT81kTGdqCQT274nnpM2GXVc8SAvbEqBec4Ck4d94uNPMchDTtvk4Bc4yk6dMRukwrCaslsrn29AnhmWidth1836Height1216HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102162864456860492810JulieMckayAPhotoReferenceATplDjZgnaf7Iet4wM1DsNv6ByuuklYKQvc6UgOoEylzMtViJ10cHVdjVgTpSmEz3Zb9JjPlaoPjHWgnJogI7w2ugW8DTgGCxt5112mBj1FEdTmozEVrFcoCrji6QLpiSJtNoeJndNmIrMkeduuFiUy1Yd4lXjYbMOjJYjqFrbb3Width1600Height1080HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib110222740943047265454JeremySargentAPhotoReferenceATplDJbq3EaGqaQhIvSkXpcw2Dr7f7jGo6qKjCkZ3xS7S96OhfooqeGiiuLpxa0Df99DMsH6Zr3OySd8HpVhR67dHJdceEAd2mE7nfnOlZzCMRekrgN1h3iF6yAijH4VwtyiPrPYzlkQl2Mn7DtgV8InXmq9TjQaVr8CMmh0PQggp7QhkWidth1080Height1415HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib105283167945636598958StevenEasthamAPhotoReferenceATplDJadyG72mSYc9pKEsQ3r7ul7syWyP6o7edFq0cnFmbYx73fG1oqBf2FmaapgcQZzc6HgNefkiJsjw0Gym8ud0F6xIOeou0RqPflTk2Yn0FdMgsxrfVwQixplEEuSjymgifRhTruJCkl6743FdYkFcGP0lkwa695TRhAVaKb1Width1080Height1198HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102162864456860492810JulieMckayAPhotoReferenceATplDJa0GQkH2biMHxtWbpoabmvnxyvu7Fh8X5ByjFeJaVd4n2mK5Ln9vNqGpRSj9N08pQ56BOy5GsaEiR4kS9RtaXAkQnupA6T5doGJqBxLxLZoQIuy4cayomByW0u9acSjf14uiEtoYn4JeOx2cTr9hDxzVx7boW8MBpCf23rjbenAWidth1600Height2000HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib118388595688406261922CliveBarhamAPhotoReferenceATplDJbFDidOagpXj9KmHAxbLqqc4qzGLQ9ZGiyy6utd9XoJU0HxbaCg4r9pVZrXnMTZsy4MqvP6Sj0Jt95diOSh0OBfT7QRtNRgho8aFs9Dz2Eg5WOazEcO6AxoYvjPkwsFcB5SE47945mI7sj65S7kY4lvrbXkETycO4Width3556PlaceIdChIj695K3dQVdEgR8Ibtoi2uDgUReferenceChIj695K3dQVdEgR8Ibtoi2uDgUTypesLocalityPoliticalUrlHttpsMapsGoogleComQD986Db8CD988C2A0D8A7D984D8B1Db8CD8B3D981D988D8B1Da88D88CD8A3D984D8B1D8B3D981D988D8B1D8AfSo24D88CD8A7D984D985D985D984D983D8A9D8A7D984D985D8AaD8AdD8AfD8A9Ftid0x487415d4dd4adeeb0x50eae2da2ed86f0UtcOffset0Vicinity(
                  Map<String, dynamic>.from(e)))
          .toList(),
      adrAddress: json['adr_address']?.toString(),
      formattedAddress: json['formatted_address']?.toString(),
      geometry: json['geometry'] == null
          ? null
          : Geometry
              .fromAddressComponentsLongNameShortNameTypesLocalityPoliticalLongNameShortNameTypesPostalTownLongNameShortNameTypesAdministrativeAreaLevel2PoliticalLongNameShortNameTypesAdministrativeAreaLevel1PoliticalLongNameShortNameGbTypesCountryPoliticalLongNameSo24ShortNameSo24TypesPostalCodePrefixPostalCodeAdrAddressSpanClassExtendedAddressSpanSpanClassLocalitySpanSpanClassPostalCodeSo24SpanSpanClassCountryNameSpanFormattedAddressSo24GeometryLocationLat510856236Lng11655575ViewportNortheastLat5109390680779035Lng1156751367495029SouthwestLat5107949290762961Lng1181399867551702IconHttpsMapsGstaticComMapfilesPlaceApiIconsV1Png71Geocode71PngIconBackgroundColor7B9Eb0IconMaskBaseUriHttpsMapsGstaticComMapfilesPlaceApiIconsV2GenericPinletNamePhotosHeight2156HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102162864456860492810JulieMckayAPhotoReferenceATplDJbqPgTrHjAljzQbTv1zSOiCgb4sLhlGuZec6iceDu8hMpY7iAtKMdGiaAqr3ra0fs8VzFn3zlGmioLtmWkvJVf00kYw5aD3TExJKzEeXylDNk6uEe6aipT9k2F6AKaGzx7qIenTUnGZaFjYnXq7v0YiCw0Mqj9qBkvopoLuQwWidth2942Height3120HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib114545944942417140633GordonPashaAPhotoReferenceATplDJaKcwaFIze2tYkHke0r2hgBkszqC3wOvPeQoCjmWKmRc0DeXJdPpMncmpv322PnucMfi5Moa96I33X8PhxRpfykDzvlxH1jTgIc0MreqO0jjWf6Tl3CwOjQCR4pRLvaIwEfYZflwWx43As6whvfzcL3MjkGvXmZvh6HXqS0Width4160Height3036HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102171268675022041984MikeEdwardsAPhotoReferenceATplDjZtwdhcq7dLeJtXzbZe3I7x2LgrjNhQzCetT033dusKl0v866LhIyM9DygPbV14nWkmjycf0D3pJONimDWxUdJdozqntJPlpXpwspUyL142hU5Li0iTxJdGcBf2FkpLxtNbZsk2qJlvrnFo560zwKrR6rGOs0Asv2k7Gy1BpeWidth4048Height3264HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102860324100270960211EpWinfieldAPhotoReferenceATplDJauTcJb2izHksHvEcWc7xMZcK5btVZeCj1K9G4Cvul3w1yONrzGyCLuXtcuNXa6gko9LrViI81rLMf4LatPryivjcKxThJ1llaexy1togX6arv3eNidyzsy6R0k34vJjk0SiJ6ySMvOzShiuxA4WGjj2RbcXx0wx9Th8BKg6lolFmWidth1836Height3264HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102860324100270960211EpWinfieldAPhotoReferenceATplDJbMOiKcVkQ0ArFicNjP9BwhPfmN6hr7Z8Vl8unwiu6OampmkMEdnRckGowY1YUurrvQc131OyCDmkssKswOn68CqT81kTGdqCQT274nnpM2GXVc8SAvbEqBec4Ck4d94uNPMchDTtvk4Bc4yk6dMRukwrCaslsrn29AnhmWidth1836Height1216HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102162864456860492810JulieMckayAPhotoReferenceATplDjZgnaf7Iet4wM1DsNv6ByuuklYKQvc6UgOoEylzMtViJ10cHVdjVgTpSmEz3Zb9JjPlaoPjHWgnJogI7w2ugW8DTgGCxt5112mBj1FEdTmozEVrFcoCrji6QLpiSJtNoeJndNmIrMkeduuFiUy1Yd4lXjYbMOjJYjqFrbb3Width1600Height1080HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib110222740943047265454JeremySargentAPhotoReferenceATplDJbq3EaGqaQhIvSkXpcw2Dr7f7jGo6qKjCkZ3xS7S96OhfooqeGiiuLpxa0Df99DMsH6Zr3OySd8HpVhR67dHJdceEAd2mE7nfnOlZzCMRekrgN1h3iF6yAijH4VwtyiPrPYzlkQl2Mn7DtgV8InXmq9TjQaVr8CMmh0PQggp7QhkWidth1080Height1415HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib105283167945636598958StevenEasthamAPhotoReferenceATplDJadyG72mSYc9pKEsQ3r7ul7syWyP6o7edFq0cnFmbYx73fG1oqBf2FmaapgcQZzc6HgNefkiJsjw0Gym8ud0F6xIOeou0RqPflTk2Yn0FdMgsxrfVwQixplEEuSjymgifRhTruJCkl6743FdYkFcGP0lkwa695TRhAVaKb1Width1080Height1198HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102162864456860492810JulieMckayAPhotoReferenceATplDJa0GQkH2biMHxtWbpoabmvnxyvu7Fh8X5ByjFeJaVd4n2mK5Ln9vNqGpRSj9N08pQ56BOy5GsaEiR4kS9RtaXAkQnupA6T5doGJqBxLxLZoQIuy4cayomByW0u9acSjf14uiEtoYn4JeOx2cTr9hDxzVx7boW8MBpCf23rjbenAWidth1600Height2000HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib118388595688406261922CliveBarhamAPhotoReferenceATplDJbFDidOagpXj9KmHAxbLqqc4qzGLQ9ZGiyy6utd9XoJU0HxbaCg4r9pVZrXnMTZsy4MqvP6Sj0Jt95diOSh0OBfT7QRtNRgho8aFs9Dz2Eg5WOazEcO6AxoYvjPkwsFcB5SE47945mI7sj65S7kY4lvrbXkETycO4Width3556PlaceIdChIj695K3dQVdEgR8Ibtoi2uDgUReferenceChIj695K3dQVdEgR8Ibtoi2uDgUTypesLocalityPoliticalUrlHttpsMapsGoogleComQD986Db8CD988C2A0D8A7D984D8B1Db8CD8B3D981D988D8B1Da88D88CD8A3D984D8B1D8B3D981D988D8B1D8AfSo24D88CD8A7D984D985D985D984D983D8A9D8A7D984D985D8AaD8AdD8AfD8A9Ftid0x487415d4dd4adeeb0x50eae2da2ed86f0UtcOffset0Vicinity(
                  Map<String, dynamic>.from(json['geometry'])),
      icon: json['icon']?.toString(),
      iconBackgroundColor: json['icon_background_color']?.toString(),
      iconMaskBaseUri: json['icon_mask_base_uri']?.toString(),
      name: json['name']?.toString(),
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => Photo
              .fromAddressComponentsLongNameShortNameTypesLocalityPoliticalLongNameShortNameTypesPostalTownLongNameShortNameTypesAdministrativeAreaLevel2PoliticalLongNameShortNameTypesAdministrativeAreaLevel1PoliticalLongNameShortNameGbTypesCountryPoliticalLongNameSo24ShortNameSo24TypesPostalCodePrefixPostalCodeAdrAddressSpanClassExtendedAddressSpanSpanClassLocalitySpanSpanClassPostalCodeSo24SpanSpanClassCountryNameSpanFormattedAddressSo24GeometryLocationLat510856236Lng11655575ViewportNortheastLat5109390680779035Lng1156751367495029SouthwestLat5107949290762961Lng1181399867551702IconHttpsMapsGstaticComMapfilesPlaceApiIconsV1Png71Geocode71PngIconBackgroundColor7B9Eb0IconMaskBaseUriHttpsMapsGstaticComMapfilesPlaceApiIconsV2GenericPinletNamePhotosHeight2156HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102162864456860492810JulieMckayAPhotoReferenceATplDJbqPgTrHjAljzQbTv1zSOiCgb4sLhlGuZec6iceDu8hMpY7iAtKMdGiaAqr3ra0fs8VzFn3zlGmioLtmWkvJVf00kYw5aD3TExJKzEeXylDNk6uEe6aipT9k2F6AKaGzx7qIenTUnGZaFjYnXq7v0YiCw0Mqj9qBkvopoLuQwWidth2942Height3120HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib114545944942417140633GordonPashaAPhotoReferenceATplDJaKcwaFIze2tYkHke0r2hgBkszqC3wOvPeQoCjmWKmRc0DeXJdPpMncmpv322PnucMfi5Moa96I33X8PhxRpfykDzvlxH1jTgIc0MreqO0jjWf6Tl3CwOjQCR4pRLvaIwEfYZflwWx43As6whvfzcL3MjkGvXmZvh6HXqS0Width4160Height3036HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102171268675022041984MikeEdwardsAPhotoReferenceATplDjZtwdhcq7dLeJtXzbZe3I7x2LgrjNhQzCetT033dusKl0v866LhIyM9DygPbV14nWkmjycf0D3pJONimDWxUdJdozqntJPlpXpwspUyL142hU5Li0iTxJdGcBf2FkpLxtNbZsk2qJlvrnFo560zwKrR6rGOs0Asv2k7Gy1BpeWidth4048Height3264HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102860324100270960211EpWinfieldAPhotoReferenceATplDJauTcJb2izHksHvEcWc7xMZcK5btVZeCj1K9G4Cvul3w1yONrzGyCLuXtcuNXa6gko9LrViI81rLMf4LatPryivjcKxThJ1llaexy1togX6arv3eNidyzsy6R0k34vJjk0SiJ6ySMvOzShiuxA4WGjj2RbcXx0wx9Th8BKg6lolFmWidth1836Height3264HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102860324100270960211EpWinfieldAPhotoReferenceATplDJbMOiKcVkQ0ArFicNjP9BwhPfmN6hr7Z8Vl8unwiu6OampmkMEdnRckGowY1YUurrvQc131OyCDmkssKswOn68CqT81kTGdqCQT274nnpM2GXVc8SAvbEqBec4Ck4d94uNPMchDTtvk4Bc4yk6dMRukwrCaslsrn29AnhmWidth1836Height1216HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102162864456860492810JulieMckayAPhotoReferenceATplDjZgnaf7Iet4wM1DsNv6ByuuklYKQvc6UgOoEylzMtViJ10cHVdjVgTpSmEz3Zb9JjPlaoPjHWgnJogI7w2ugW8DTgGCxt5112mBj1FEdTmozEVrFcoCrji6QLpiSJtNoeJndNmIrMkeduuFiUy1Yd4lXjYbMOjJYjqFrbb3Width1600Height1080HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib110222740943047265454JeremySargentAPhotoReferenceATplDJbq3EaGqaQhIvSkXpcw2Dr7f7jGo6qKjCkZ3xS7S96OhfooqeGiiuLpxa0Df99DMsH6Zr3OySd8HpVhR67dHJdceEAd2mE7nfnOlZzCMRekrgN1h3iF6yAijH4VwtyiPrPYzlkQl2Mn7DtgV8InXmq9TjQaVr8CMmh0PQggp7QhkWidth1080Height1415HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib105283167945636598958StevenEasthamAPhotoReferenceATplDJadyG72mSYc9pKEsQ3r7ul7syWyP6o7edFq0cnFmbYx73fG1oqBf2FmaapgcQZzc6HgNefkiJsjw0Gym8ud0F6xIOeou0RqPflTk2Yn0FdMgsxrfVwQixplEEuSjymgifRhTruJCkl6743FdYkFcGP0lkwa695TRhAVaKb1Width1080Height1198HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102162864456860492810JulieMckayAPhotoReferenceATplDJa0GQkH2biMHxtWbpoabmvnxyvu7Fh8X5ByjFeJaVd4n2mK5Ln9vNqGpRSj9N08pQ56BOy5GsaEiR4kS9RtaXAkQnupA6T5doGJqBxLxLZoQIuy4cayomByW0u9acSjf14uiEtoYn4JeOx2cTr9hDxzVx7boW8MBpCf23rjbenAWidth1600Height2000HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib118388595688406261922CliveBarhamAPhotoReferenceATplDJbFDidOagpXj9KmHAxbLqqc4qzGLQ9ZGiyy6utd9XoJU0HxbaCg4r9pVZrXnMTZsy4MqvP6Sj0Jt95diOSh0OBfT7QRtNRgho8aFs9Dz2Eg5WOazEcO6AxoYvjPkwsFcB5SE47945mI7sj65S7kY4lvrbXkETycO4Width3556PlaceIdChIj695K3dQVdEgR8Ibtoi2uDgUReferenceChIj695K3dQVdEgR8Ibtoi2uDgUTypesLocalityPoliticalUrlHttpsMapsGoogleComQD986Db8CD988C2A0D8A7D984D8B1Db8CD8B3D981D988D8B1Da88D88CD8A3D984D8B1D8B3D981D988D8B1D8AfSo24D88CD8A7D984D985D985D984D983D8A9D8A7D984D985D8AaD8AdD8AfD8A9Ftid0x487415d4dd4adeeb0x50eae2da2ed86f0UtcOffset0Vicinity(
                  Map<String, dynamic>.from(e)))
          .toList(),
      placeId: json['place_id']?.toString(),
      reference: json['reference']?.toString(),
      types: List<String>.from(json['types'] ?? []),
      url: json['url']?.toString(),
      utcOffset: num.tryParse(json['utc_offset'].toString()),
      vicinity: json['vicinity']?.toString(),
    );
  }

  Map<String, dynamic>
      toAddressComponentsLongNameShortNameTypesLocalityPoliticalLongNameShortNameTypesPostalTownLongNameShortNameTypesAdministrativeAreaLevel2PoliticalLongNameShortNameTypesAdministrativeAreaLevel1PoliticalLongNameShortNameGbTypesCountryPoliticalLongNameSo24ShortNameSo24TypesPostalCodePrefixPostalCodeAdrAddressSpanClassExtendedAddressSpanSpanClassLocalitySpanSpanClassPostalCodeSo24SpanSpanClassCountryNameSpanFormattedAddressSo24GeometryLocationLat510856236Lng11655575ViewportNortheastLat5109390680779035Lng1156751367495029SouthwestLat5107949290762961Lng1181399867551702IconHttpsMapsGstaticComMapfilesPlaceApiIconsV1Png71Geocode71PngIconBackgroundColor7B9Eb0IconMaskBaseUriHttpsMapsGstaticComMapfilesPlaceApiIconsV2GenericPinletNamePhotosHeight2156HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102162864456860492810JulieMckayAPhotoReferenceATplDJbqPgTrHjAljzQbTv1zSOiCgb4sLhlGuZec6iceDu8hMpY7iAtKMdGiaAqr3ra0fs8VzFn3zlGmioLtmWkvJVf00kYw5aD3TExJKzEeXylDNk6uEe6aipT9k2F6AKaGzx7qIenTUnGZaFjYnXq7v0YiCw0Mqj9qBkvopoLuQwWidth2942Height3120HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib114545944942417140633GordonPashaAPhotoReferenceATplDJaKcwaFIze2tYkHke0r2hgBkszqC3wOvPeQoCjmWKmRc0DeXJdPpMncmpv322PnucMfi5Moa96I33X8PhxRpfykDzvlxH1jTgIc0MreqO0jjWf6Tl3CwOjQCR4pRLvaIwEfYZflwWx43As6whvfzcL3MjkGvXmZvh6HXqS0Width4160Height3036HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102171268675022041984MikeEdwardsAPhotoReferenceATplDjZtwdhcq7dLeJtXzbZe3I7x2LgrjNhQzCetT033dusKl0v866LhIyM9DygPbV14nWkmjycf0D3pJONimDWxUdJdozqntJPlpXpwspUyL142hU5Li0iTxJdGcBf2FkpLxtNbZsk2qJlvrnFo560zwKrR6rGOs0Asv2k7Gy1BpeWidth4048Height3264HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102860324100270960211EpWinfieldAPhotoReferenceATplDJauTcJb2izHksHvEcWc7xMZcK5btVZeCj1K9G4Cvul3w1yONrzGyCLuXtcuNXa6gko9LrViI81rLMf4LatPryivjcKxThJ1llaexy1togX6arv3eNidyzsy6R0k34vJjk0SiJ6ySMvOzShiuxA4WGjj2RbcXx0wx9Th8BKg6lolFmWidth1836Height3264HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102860324100270960211EpWinfieldAPhotoReferenceATplDJbMOiKcVkQ0ArFicNjP9BwhPfmN6hr7Z8Vl8unwiu6OampmkMEdnRckGowY1YUurrvQc131OyCDmkssKswOn68CqT81kTGdqCQT274nnpM2GXVc8SAvbEqBec4Ck4d94uNPMchDTtvk4Bc4yk6dMRukwrCaslsrn29AnhmWidth1836Height1216HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102162864456860492810JulieMckayAPhotoReferenceATplDjZgnaf7Iet4wM1DsNv6ByuuklYKQvc6UgOoEylzMtViJ10cHVdjVgTpSmEz3Zb9JjPlaoPjHWgnJogI7w2ugW8DTgGCxt5112mBj1FEdTmozEVrFcoCrji6QLpiSJtNoeJndNmIrMkeduuFiUy1Yd4lXjYbMOjJYjqFrbb3Width1600Height1080HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib110222740943047265454JeremySargentAPhotoReferenceATplDJbq3EaGqaQhIvSkXpcw2Dr7f7jGo6qKjCkZ3xS7S96OhfooqeGiiuLpxa0Df99DMsH6Zr3OySd8HpVhR67dHJdceEAd2mE7nfnOlZzCMRekrgN1h3iF6yAijH4VwtyiPrPYzlkQl2Mn7DtgV8InXmq9TjQaVr8CMmh0PQggp7QhkWidth1080Height1415HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib105283167945636598958StevenEasthamAPhotoReferenceATplDJadyG72mSYc9pKEsQ3r7ul7syWyP6o7edFq0cnFmbYx73fG1oqBf2FmaapgcQZzc6HgNefkiJsjw0Gym8ud0F6xIOeou0RqPflTk2Yn0FdMgsxrfVwQixplEEuSjymgifRhTruJCkl6743FdYkFcGP0lkwa695TRhAVaKb1Width1080Height1198HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102162864456860492810JulieMckayAPhotoReferenceATplDJa0GQkH2biMHxtWbpoabmvnxyvu7Fh8X5ByjFeJaVd4n2mK5Ln9vNqGpRSj9N08pQ56BOy5GsaEiR4kS9RtaXAkQnupA6T5doGJqBxLxLZoQIuy4cayomByW0u9acSjf14uiEtoYn4JeOx2cTr9hDxzVx7boW8MBpCf23rjbenAWidth1600Height2000HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib118388595688406261922CliveBarhamAPhotoReferenceATplDJbFDidOagpXj9KmHAxbLqqc4qzGLQ9ZGiyy6utd9XoJU0HxbaCg4r9pVZrXnMTZsy4MqvP6Sj0Jt95diOSh0OBfT7QRtNRgho8aFs9Dz2Eg5WOazEcO6AxoYvjPkwsFcB5SE47945mI7sj65S7kY4lvrbXkETycO4Width3556PlaceIdChIj695K3dQVdEgR8Ibtoi2uDgUReferenceChIj695K3dQVdEgR8Ibtoi2uDgUTypesLocalityPoliticalUrlHttpsMapsGoogleComQD986Db8CD988C2A0D8A7D984D8B1Db8CD8B3D981D988D8B1Da88D88CD8A3D984D8B1D8B3D981D988D8B1D8AfSo24D88CD8A7D984D985D985D984D983D8A9D8A7D984D985D8AaD8AdD8AfD8A9Ftid0x487415d4dd4adeeb0x50eae2da2ed86f0UtcOffset0Vicinity() {
    return {
      if (addressComponents != null)
        'address_components': addressComponents
            ?.map((e) => e
                .toAddressComponentsLongNameShortNameTypesLocalityPoliticalLongNameShortNameTypesPostalTownLongNameShortNameTypesAdministrativeAreaLevel2PoliticalLongNameShortNameTypesAdministrativeAreaLevel1PoliticalLongNameShortNameGbTypesCountryPoliticalLongNameSo24ShortNameSo24TypesPostalCodePrefixPostalCodeAdrAddressSpanClassExtendedAddressSpanSpanClassLocalitySpanSpanClassPostalCodeSo24SpanSpanClassCountryNameSpanFormattedAddressSo24GeometryLocationLat510856236Lng11655575ViewportNortheastLat5109390680779035Lng1156751367495029SouthwestLat5107949290762961Lng1181399867551702IconHttpsMapsGstaticComMapfilesPlaceApiIconsV1Png71Geocode71PngIconBackgroundColor7B9Eb0IconMaskBaseUriHttpsMapsGstaticComMapfilesPlaceApiIconsV2GenericPinletNamePhotosHeight2156HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102162864456860492810JulieMckayAPhotoReferenceATplDJbqPgTrHjAljzQbTv1zSOiCgb4sLhlGuZec6iceDu8hMpY7iAtKMdGiaAqr3ra0fs8VzFn3zlGmioLtmWkvJVf00kYw5aD3TExJKzEeXylDNk6uEe6aipT9k2F6AKaGzx7qIenTUnGZaFjYnXq7v0YiCw0Mqj9qBkvopoLuQwWidth2942Height3120HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib114545944942417140633GordonPashaAPhotoReferenceATplDJaKcwaFIze2tYkHke0r2hgBkszqC3wOvPeQoCjmWKmRc0DeXJdPpMncmpv322PnucMfi5Moa96I33X8PhxRpfykDzvlxH1jTgIc0MreqO0jjWf6Tl3CwOjQCR4pRLvaIwEfYZflwWx43As6whvfzcL3MjkGvXmZvh6HXqS0Width4160Height3036HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102171268675022041984MikeEdwardsAPhotoReferenceATplDjZtwdhcq7dLeJtXzbZe3I7x2LgrjNhQzCetT033dusKl0v866LhIyM9DygPbV14nWkmjycf0D3pJONimDWxUdJdozqntJPlpXpwspUyL142hU5Li0iTxJdGcBf2FkpLxtNbZsk2qJlvrnFo560zwKrR6rGOs0Asv2k7Gy1BpeWidth4048Height3264HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102860324100270960211EpWinfieldAPhotoReferenceATplDJauTcJb2izHksHvEcWc7xMZcK5btVZeCj1K9G4Cvul3w1yONrzGyCLuXtcuNXa6gko9LrViI81rLMf4LatPryivjcKxThJ1llaexy1togX6arv3eNidyzsy6R0k34vJjk0SiJ6ySMvOzShiuxA4WGjj2RbcXx0wx9Th8BKg6lolFmWidth1836Height3264HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102860324100270960211EpWinfieldAPhotoReferenceATplDJbMOiKcVkQ0ArFicNjP9BwhPfmN6hr7Z8Vl8unwiu6OampmkMEdnRckGowY1YUurrvQc131OyCDmkssKswOn68CqT81kTGdqCQT274nnpM2GXVc8SAvbEqBec4Ck4d94uNPMchDTtvk4Bc4yk6dMRukwrCaslsrn29AnhmWidth1836Height1216HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102162864456860492810JulieMckayAPhotoReferenceATplDjZgnaf7Iet4wM1DsNv6ByuuklYKQvc6UgOoEylzMtViJ10cHVdjVgTpSmEz3Zb9JjPlaoPjHWgnJogI7w2ugW8DTgGCxt5112mBj1FEdTmozEVrFcoCrji6QLpiSJtNoeJndNmIrMkeduuFiUy1Yd4lXjYbMOjJYjqFrbb3Width1600Height1080HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib110222740943047265454JeremySargentAPhotoReferenceATplDJbq3EaGqaQhIvSkXpcw2Dr7f7jGo6qKjCkZ3xS7S96OhfooqeGiiuLpxa0Df99DMsH6Zr3OySd8HpVhR67dHJdceEAd2mE7nfnOlZzCMRekrgN1h3iF6yAijH4VwtyiPrPYzlkQl2Mn7DtgV8InXmq9TjQaVr8CMmh0PQggp7QhkWidth1080Height1415HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib105283167945636598958StevenEasthamAPhotoReferenceATplDJadyG72mSYc9pKEsQ3r7ul7syWyP6o7edFq0cnFmbYx73fG1oqBf2FmaapgcQZzc6HgNefkiJsjw0Gym8ud0F6xIOeou0RqPflTk2Yn0FdMgsxrfVwQixplEEuSjymgifRhTruJCkl6743FdYkFcGP0lkwa695TRhAVaKb1Width1080Height1198HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102162864456860492810JulieMckayAPhotoReferenceATplDJa0GQkH2biMHxtWbpoabmvnxyvu7Fh8X5ByjFeJaVd4n2mK5Ln9vNqGpRSj9N08pQ56BOy5GsaEiR4kS9RtaXAkQnupA6T5doGJqBxLxLZoQIuy4cayomByW0u9acSjf14uiEtoYn4JeOx2cTr9hDxzVx7boW8MBpCf23rjbenAWidth1600Height2000HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib118388595688406261922CliveBarhamAPhotoReferenceATplDJbFDidOagpXj9KmHAxbLqqc4qzGLQ9ZGiyy6utd9XoJU0HxbaCg4r9pVZrXnMTZsy4MqvP6Sj0Jt95diOSh0OBfT7QRtNRgho8aFs9Dz2Eg5WOazEcO6AxoYvjPkwsFcB5SE47945mI7sj65S7kY4lvrbXkETycO4Width3556PlaceIdChIj695K3dQVdEgR8Ibtoi2uDgUReferenceChIj695K3dQVdEgR8Ibtoi2uDgUTypesLocalityPoliticalUrlHttpsMapsGoogleComQD986Db8CD988C2A0D8A7D984D8B1Db8CD8B3D981D988D8B1Da88D88CD8A3D984D8B1D8B3D981D988D8B1D8AfSo24D88CD8A7D984D985D985D984D983D8A9D8A7D984D985D8AaD8AdD8AfD8A9Ftid0x487415d4dd4adeeb0x50eae2da2ed86f0UtcOffset0Vicinity())
            .toList(),
      if (adrAddress != null) 'adr_address': adrAddress,
      if (formattedAddress != null) 'formatted_address': formattedAddress,
      if (geometry != null)
        'geometry': geometry
            ?.toAddressComponentsLongNameShortNameTypesLocalityPoliticalLongNameShortNameTypesPostalTownLongNameShortNameTypesAdministrativeAreaLevel2PoliticalLongNameShortNameTypesAdministrativeAreaLevel1PoliticalLongNameShortNameGbTypesCountryPoliticalLongNameSo24ShortNameSo24TypesPostalCodePrefixPostalCodeAdrAddressSpanClassExtendedAddressSpanSpanClassLocalitySpanSpanClassPostalCodeSo24SpanSpanClassCountryNameSpanFormattedAddressSo24GeometryLocationLat510856236Lng11655575ViewportNortheastLat5109390680779035Lng1156751367495029SouthwestLat5107949290762961Lng1181399867551702IconHttpsMapsGstaticComMapfilesPlaceApiIconsV1Png71Geocode71PngIconBackgroundColor7B9Eb0IconMaskBaseUriHttpsMapsGstaticComMapfilesPlaceApiIconsV2GenericPinletNamePhotosHeight2156HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102162864456860492810JulieMckayAPhotoReferenceATplDJbqPgTrHjAljzQbTv1zSOiCgb4sLhlGuZec6iceDu8hMpY7iAtKMdGiaAqr3ra0fs8VzFn3zlGmioLtmWkvJVf00kYw5aD3TExJKzEeXylDNk6uEe6aipT9k2F6AKaGzx7qIenTUnGZaFjYnXq7v0YiCw0Mqj9qBkvopoLuQwWidth2942Height3120HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib114545944942417140633GordonPashaAPhotoReferenceATplDJaKcwaFIze2tYkHke0r2hgBkszqC3wOvPeQoCjmWKmRc0DeXJdPpMncmpv322PnucMfi5Moa96I33X8PhxRpfykDzvlxH1jTgIc0MreqO0jjWf6Tl3CwOjQCR4pRLvaIwEfYZflwWx43As6whvfzcL3MjkGvXmZvh6HXqS0Width4160Height3036HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102171268675022041984MikeEdwardsAPhotoReferenceATplDjZtwdhcq7dLeJtXzbZe3I7x2LgrjNhQzCetT033dusKl0v866LhIyM9DygPbV14nWkmjycf0D3pJONimDWxUdJdozqntJPlpXpwspUyL142hU5Li0iTxJdGcBf2FkpLxtNbZsk2qJlvrnFo560zwKrR6rGOs0Asv2k7Gy1BpeWidth4048Height3264HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102860324100270960211EpWinfieldAPhotoReferenceATplDJauTcJb2izHksHvEcWc7xMZcK5btVZeCj1K9G4Cvul3w1yONrzGyCLuXtcuNXa6gko9LrViI81rLMf4LatPryivjcKxThJ1llaexy1togX6arv3eNidyzsy6R0k34vJjk0SiJ6ySMvOzShiuxA4WGjj2RbcXx0wx9Th8BKg6lolFmWidth1836Height3264HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102860324100270960211EpWinfieldAPhotoReferenceATplDJbMOiKcVkQ0ArFicNjP9BwhPfmN6hr7Z8Vl8unwiu6OampmkMEdnRckGowY1YUurrvQc131OyCDmkssKswOn68CqT81kTGdqCQT274nnpM2GXVc8SAvbEqBec4Ck4d94uNPMchDTtvk4Bc4yk6dMRukwrCaslsrn29AnhmWidth1836Height1216HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102162864456860492810JulieMckayAPhotoReferenceATplDjZgnaf7Iet4wM1DsNv6ByuuklYKQvc6UgOoEylzMtViJ10cHVdjVgTpSmEz3Zb9JjPlaoPjHWgnJogI7w2ugW8DTgGCxt5112mBj1FEdTmozEVrFcoCrji6QLpiSJtNoeJndNmIrMkeduuFiUy1Yd4lXjYbMOjJYjqFrbb3Width1600Height1080HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib110222740943047265454JeremySargentAPhotoReferenceATplDJbq3EaGqaQhIvSkXpcw2Dr7f7jGo6qKjCkZ3xS7S96OhfooqeGiiuLpxa0Df99DMsH6Zr3OySd8HpVhR67dHJdceEAd2mE7nfnOlZzCMRekrgN1h3iF6yAijH4VwtyiPrPYzlkQl2Mn7DtgV8InXmq9TjQaVr8CMmh0PQggp7QhkWidth1080Height1415HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib105283167945636598958StevenEasthamAPhotoReferenceATplDJadyG72mSYc9pKEsQ3r7ul7syWyP6o7edFq0cnFmbYx73fG1oqBf2FmaapgcQZzc6HgNefkiJsjw0Gym8ud0F6xIOeou0RqPflTk2Yn0FdMgsxrfVwQixplEEuSjymgifRhTruJCkl6743FdYkFcGP0lkwa695TRhAVaKb1Width1080Height1198HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102162864456860492810JulieMckayAPhotoReferenceATplDJa0GQkH2biMHxtWbpoabmvnxyvu7Fh8X5ByjFeJaVd4n2mK5Ln9vNqGpRSj9N08pQ56BOy5GsaEiR4kS9RtaXAkQnupA6T5doGJqBxLxLZoQIuy4cayomByW0u9acSjf14uiEtoYn4JeOx2cTr9hDxzVx7boW8MBpCf23rjbenAWidth1600Height2000HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib118388595688406261922CliveBarhamAPhotoReferenceATplDJbFDidOagpXj9KmHAxbLqqc4qzGLQ9ZGiyy6utd9XoJU0HxbaCg4r9pVZrXnMTZsy4MqvP6Sj0Jt95diOSh0OBfT7QRtNRgho8aFs9Dz2Eg5WOazEcO6AxoYvjPkwsFcB5SE47945mI7sj65S7kY4lvrbXkETycO4Width3556PlaceIdChIj695K3dQVdEgR8Ibtoi2uDgUReferenceChIj695K3dQVdEgR8Ibtoi2uDgUTypesLocalityPoliticalUrlHttpsMapsGoogleComQD986Db8CD988C2A0D8A7D984D8B1Db8CD8B3D981D988D8B1Da88D88CD8A3D984D8B1D8B3D981D988D8B1D8AfSo24D88CD8A7D984D985D985D984D983D8A9D8A7D984D985D8AaD8AdD8AfD8A9Ftid0x487415d4dd4adeeb0x50eae2da2ed86f0UtcOffset0Vicinity(),
      if (icon != null) 'icon': icon,
      if (iconBackgroundColor != null)
        'icon_background_color': iconBackgroundColor,
      if (iconMaskBaseUri != null) 'icon_mask_base_uri': iconMaskBaseUri,
      if (name != null) 'name': name,
      if (photos != null)
        'photos': photos
            ?.map((e) => e
                .toAddressComponentsLongNameShortNameTypesLocalityPoliticalLongNameShortNameTypesPostalTownLongNameShortNameTypesAdministrativeAreaLevel2PoliticalLongNameShortNameTypesAdministrativeAreaLevel1PoliticalLongNameShortNameGbTypesCountryPoliticalLongNameSo24ShortNameSo24TypesPostalCodePrefixPostalCodeAdrAddressSpanClassExtendedAddressSpanSpanClassLocalitySpanSpanClassPostalCodeSo24SpanSpanClassCountryNameSpanFormattedAddressSo24GeometryLocationLat510856236Lng11655575ViewportNortheastLat5109390680779035Lng1156751367495029SouthwestLat5107949290762961Lng1181399867551702IconHttpsMapsGstaticComMapfilesPlaceApiIconsV1Png71Geocode71PngIconBackgroundColor7B9Eb0IconMaskBaseUriHttpsMapsGstaticComMapfilesPlaceApiIconsV2GenericPinletNamePhotosHeight2156HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102162864456860492810JulieMckayAPhotoReferenceATplDJbqPgTrHjAljzQbTv1zSOiCgb4sLhlGuZec6iceDu8hMpY7iAtKMdGiaAqr3ra0fs8VzFn3zlGmioLtmWkvJVf00kYw5aD3TExJKzEeXylDNk6uEe6aipT9k2F6AKaGzx7qIenTUnGZaFjYnXq7v0YiCw0Mqj9qBkvopoLuQwWidth2942Height3120HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib114545944942417140633GordonPashaAPhotoReferenceATplDJaKcwaFIze2tYkHke0r2hgBkszqC3wOvPeQoCjmWKmRc0DeXJdPpMncmpv322PnucMfi5Moa96I33X8PhxRpfykDzvlxH1jTgIc0MreqO0jjWf6Tl3CwOjQCR4pRLvaIwEfYZflwWx43As6whvfzcL3MjkGvXmZvh6HXqS0Width4160Height3036HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102171268675022041984MikeEdwardsAPhotoReferenceATplDjZtwdhcq7dLeJtXzbZe3I7x2LgrjNhQzCetT033dusKl0v866LhIyM9DygPbV14nWkmjycf0D3pJONimDWxUdJdozqntJPlpXpwspUyL142hU5Li0iTxJdGcBf2FkpLxtNbZsk2qJlvrnFo560zwKrR6rGOs0Asv2k7Gy1BpeWidth4048Height3264HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102860324100270960211EpWinfieldAPhotoReferenceATplDJauTcJb2izHksHvEcWc7xMZcK5btVZeCj1K9G4Cvul3w1yONrzGyCLuXtcuNXa6gko9LrViI81rLMf4LatPryivjcKxThJ1llaexy1togX6arv3eNidyzsy6R0k34vJjk0SiJ6ySMvOzShiuxA4WGjj2RbcXx0wx9Th8BKg6lolFmWidth1836Height3264HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102860324100270960211EpWinfieldAPhotoReferenceATplDJbMOiKcVkQ0ArFicNjP9BwhPfmN6hr7Z8Vl8unwiu6OampmkMEdnRckGowY1YUurrvQc131OyCDmkssKswOn68CqT81kTGdqCQT274nnpM2GXVc8SAvbEqBec4Ck4d94uNPMchDTtvk4Bc4yk6dMRukwrCaslsrn29AnhmWidth1836Height1216HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102162864456860492810JulieMckayAPhotoReferenceATplDjZgnaf7Iet4wM1DsNv6ByuuklYKQvc6UgOoEylzMtViJ10cHVdjVgTpSmEz3Zb9JjPlaoPjHWgnJogI7w2ugW8DTgGCxt5112mBj1FEdTmozEVrFcoCrji6QLpiSJtNoeJndNmIrMkeduuFiUy1Yd4lXjYbMOjJYjqFrbb3Width1600Height1080HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib110222740943047265454JeremySargentAPhotoReferenceATplDJbq3EaGqaQhIvSkXpcw2Dr7f7jGo6qKjCkZ3xS7S96OhfooqeGiiuLpxa0Df99DMsH6Zr3OySd8HpVhR67dHJdceEAd2mE7nfnOlZzCMRekrgN1h3iF6yAijH4VwtyiPrPYzlkQl2Mn7DtgV8InXmq9TjQaVr8CMmh0PQggp7QhkWidth1080Height1415HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib105283167945636598958StevenEasthamAPhotoReferenceATplDJadyG72mSYc9pKEsQ3r7ul7syWyP6o7edFq0cnFmbYx73fG1oqBf2FmaapgcQZzc6HgNefkiJsjw0Gym8ud0F6xIOeou0RqPflTk2Yn0FdMgsxrfVwQixplEEuSjymgifRhTruJCkl6743FdYkFcGP0lkwa695TRhAVaKb1Width1080Height1198HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib102162864456860492810JulieMckayAPhotoReferenceATplDJa0GQkH2biMHxtWbpoabmvnxyvu7Fh8X5ByjFeJaVd4n2mK5Ln9vNqGpRSj9N08pQ56BOy5GsaEiR4kS9RtaXAkQnupA6T5doGJqBxLxLZoQIuy4cayomByW0u9acSjf14uiEtoYn4JeOx2cTr9hDxzVx7boW8MBpCf23rjbenAWidth1600Height2000HtmlAttributionsAHrefHttpsMapsGoogleComMapsContrib118388595688406261922CliveBarhamAPhotoReferenceATplDJbFDidOagpXj9KmHAxbLqqc4qzGLQ9ZGiyy6utd9XoJU0HxbaCg4r9pVZrXnMTZsy4MqvP6Sj0Jt95diOSh0OBfT7QRtNRgho8aFs9Dz2Eg5WOazEcO6AxoYvjPkwsFcB5SE47945mI7sj65S7kY4lvrbXkETycO4Width3556PlaceIdChIj695K3dQVdEgR8Ibtoi2uDgUReferenceChIj695K3dQVdEgR8Ibtoi2uDgUTypesLocalityPoliticalUrlHttpsMapsGoogleComQD986Db8CD988C2A0D8A7D984D8B1Db8CD8B3D981D988D8B1Da88D88CD8A3D984D8B1D8B3D981D988D8B1D8AfSo24D88CD8A7D984D985D985D984D983D8A9D8A7D984D985D8AaD8AdD8AfD8A9Ftid0x487415d4dd4adeeb0x50eae2da2ed86f0UtcOffset0Vicinity())
            .toList(),
      if (placeId != null) 'place_id': placeId,
      if (reference != null) 'reference': reference,
      if (types != null) 'types': types,
      if (url != null) 'url': url,
      if (utcOffset != null) 'utc_offset': utcOffset,
      if (vicinity != null) 'vicinity': vicinity,
    };
  }
}
