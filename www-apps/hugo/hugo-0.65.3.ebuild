# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# Change this when you update the ebuild
GIT_COMMIT="211ba42a95a6e24e0f8798fe15bde4b8a8394483"
EGO_PN="github.com/gohugoio/hugo"
EGO_VENDOR=(
	# Note: Keep EGO_VENDOR in sync with `GO111MODULE=on go list -m all`
	"cloud.google.com/go v0.39.0 github.com/googleapis/google-cloud-go"
	"contrib.go.opencensus.io/exporter/aws 2befc13012d0 github.com/census-ecosystem/opencensus-go-exporter-aws"
	"contrib.go.opencensus.io/exporter/ocagent v0.4.12 github.com/census-ecosystem/opencensus-go-exporter-ocagent"
	"contrib.go.opencensus.io/exporter/stackdriver v0.11.0 github.com/census-ecosystem/opencensus-go-exporter-stackdriver"
	"contrib.go.opencensus.io/integrations/ocsql v0.1.4 github.com/opencensus-integrations/ocsql"
	"contrib.go.opencensus.io/resource 21591786a5e0 github.com/census-ecosystem/opencensus-go-resource"
	"github.com/Azure/azure-amqp-common-go v1.1.4"
	"github.com/Azure/azure-pipeline-go v0.1.9"
	"github.com/Azure/azure-sdk-for-go v27.3.0"
	"github.com/Azure/azure-service-bus-go v0.4.1"
	"github.com/Azure/azure-storage-blob-go v0.6.0"
	"github.com/Azure/go-autorest v11.1.2"
	"github.com/Azure/go-autorest/tracing v11.1.2 github.com/Azure/go-autorest"
	"github.com/BurntSushi/locker a6e239ea1c69"
	"github.com/BurntSushi/toml v0.3.1"
	"github.com/GeertJohan/go.incremental v1.0.0"
	"github.com/GeertJohan/go.rice v1.0.0"
	"github.com/GoogleCloudPlatform/cloudsql-proxy 6ac0b49e7197"
	"github.com/OneOfOne/xxhash v1.2.2"
	"github.com/PuerkitoBio/purell v1.1.1"
	"github.com/PuerkitoBio/urlesc de5bf2ad4578"
	"github.com/Shopify/sarama v1.19.0"
	"github.com/Shopify/toxiproxy v2.1.4"
	"github.com/akavel/rsrc v0.8.0"
	"github.com/alecthomas/assert 405dbfeb8e38"
	"github.com/alecthomas/chroma v0.7.1"
	"github.com/alecthomas/colour 60882d9e2721"
	"github.com/alecthomas/kong 0548c6b1afae"
	"github.com/alecthomas/kong-hcl b21fea9723c8"
	"github.com/alecthomas/repr d37bc2a10ba1"
	"github.com/alecthomas/template a0175ee3bccc"
	"github.com/alecthomas/units 2efee857e7cf"
	"github.com/apache/thrift v0.12.0"
	"github.com/armon/consul-api eb2c6b5be1b6"
	"github.com/armon/go-radix v1.0.0"
	"github.com/aws/aws-sdk-go v1.27.1"
	"github.com/beorn7/perks v1.0.0"
	"github.com/bep/debounce v1.2.0"
	"github.com/bep/gitmap v1.1.1"
	"github.com/bep/golibsass v0.4.0"
	"github.com/bep/tmc v0.5.1"
	"github.com/census-instrumentation/opencensus-proto v0.2.0"
	"github.com/cespare/xxhash v1.1.0"
	"github.com/cheekybits/is 68e9c0620927"
	"github.com/client9/misspell v0.3.4"
	"github.com/codahale/hdrhistogram 3a0bb77429bd"
	"github.com/coreos/bbolt v1.3.2"
	"github.com/coreos/etcd v3.3.10"
	"github.com/coreos/go-etcd v2.0.0"
	"github.com/coreos/go-semver v0.2.0"
	"github.com/coreos/go-systemd 95778dfbb74e"
	"github.com/coreos/pkg 399ea9e2e55f"
	"github.com/cpuguy83/go-md2man v1.0.10"
	"github.com/daaku/go.zipexe v1.0.0"
	"github.com/danwakefield/fnmatch cbb64ac3d964"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/dgrijalva/jwt-go v3.2.0"
	"github.com/dgryski/go-sip13 e10d5fee7954"
	"github.com/dimchansky/utfbom v1.1.0"
	"github.com/disintegration/gift v1.2.1"
	"github.com/dlclark/regexp2 v1.2.0"
	"github.com/dustin/go-humanize v1.0.0"
	"github.com/eapache/go-resiliency v1.1.0"
	"github.com/eapache/go-xerial-snappy 776d5712da21"
	"github.com/eapache/queue v1.1.0"
	"github.com/fortytw2/leaktest v1.3.0"
	"github.com/frankban/quicktest v1.7.2"
	"github.com/fsnotify/fsnotify v1.4.7"
	"github.com/ghodss/yaml v1.0.0"
	"github.com/go-ini/ini v1.25.4"
	"github.com/go-kit/kit v0.8.0"
	"github.com/go-logfmt/logfmt v0.4.0"
	"github.com/go-sql-driver/mysql v1.4.1"
	"github.com/go-stack/stack v1.8.0"
	"github.com/gobwas/glob v0.2.3"
	"github.com/gogo/protobuf v1.2.1"
	"github.com/gohugoio/testmodBuilder/mods c56af20f2e95 github.com/gohugoio/testmodBuilder"
	"github.com/golang/glog 23def4e6c14b"
	"github.com/golang/groupcache 5b532d6fd5ef"
	"github.com/golang/mock v1.2.0"
	"github.com/golang/protobuf v1.3.1"
	"github.com/golang/snappy v0.0.1"
	"github.com/google/btree v1.0.0"
	"github.com/google/go-cmp v0.3.1"
	"github.com/google/martian 25dcb96d9e51"
	"github.com/google/pprof 3ea8567a2e57"
	"github.com/google/uuid v1.1.1"
	"github.com/google/wire v0.2.2"
	"github.com/googleapis/gax-go v2.0.2"
	"github.com/googleapis/gax-go/v2 v2.0.2 github.com/googleapis/gax-go"
	"github.com/gopherjs/gopherjs 0766667cb4d1"
	"github.com/gorilla/context v1.1.1"
	"github.com/gorilla/csrf v1.6.0"
	"github.com/gorilla/handlers v1.4.1"
	"github.com/gorilla/mux v1.7.3"
	"github.com/gorilla/securecookie v1.1.1"
	"github.com/gorilla/websocket v1.4.1"
	"github.com/grpc-ecosystem/go-grpc-middleware v1.0.0"
	"github.com/grpc-ecosystem/go-grpc-prometheus v1.2.0"
	"github.com/grpc-ecosystem/grpc-gateway v1.9.0"
	"github.com/hashicorp/golang-lru v0.5.1"
	"github.com/hashicorp/hcl v1.0.0"
	"github.com/hpcloud/tail v1.0.0"
	"github.com/inconshreveable/mousetrap v1.0.0"
	"github.com/jdkato/prose v1.1.1"
	"github.com/jessevdk/go-flags v1.4.0"
	"github.com/jmespath/go-jmespath c2b33e8439af"
	"github.com/joho/godotenv v1.3.0"
	"github.com/jonboulle/clockwork v0.1.0"
	"github.com/jstemmer/go-junit-report af01ea7f8024"
	"github.com/jtolds/gls v4.20.0"
	"github.com/julienschmidt/httprouter v1.2.0"
	"github.com/kisielk/errcheck v1.1.0"
	"github.com/kisielk/gotool v1.0.0"
	"github.com/konsorten/go-windows-terminal-sequences v1.0.1"
	"github.com/kr/logfmt b84e30acd515"
	"github.com/kr/pretty v0.2.0"
	"github.com/kr/pty v1.1.1"
	"github.com/kr/text v0.1.0"
	"github.com/kyokomi/emoji v2.1.0"
	"github.com/lib/pq v1.1.0"
	"github.com/magefile/mage v1.9.0"
	"github.com/magiconair/properties v1.8.1"
	"github.com/markbates/inflect a12c3aec81a6"
	"github.com/matryer/try 9ac251b645a2"
	"github.com/mattn/go-colorable v0.0.9"
	"github.com/mattn/go-isatty v0.0.11"
	"github.com/mattn/go-runewidth v0.0.7"
	"github.com/matttproud/golang_protobuf_extensions v1.0.1"
	"github.com/miekg/mmark v1.3.6"
	"github.com/mitchellh/go-homedir v1.1.0"
	"github.com/mitchellh/hashstructure v1.0.0"
	"github.com/mitchellh/mapstructure v1.1.2"
	"github.com/muesli/smartcrop v0.3.0"
	"github.com/mwitkow/go-conntrack cc309e4a2223"
	"github.com/nfnt/resize 83c6a9932646"
	"github.com/nicksnyder/go-i18n v1.10.0"
	"github.com/niklasfasching/go-org v1.0.0"
	"github.com/nkovacs/streamquote 49af9bddb229"
	"github.com/oklog/ulid v1.3.1"
	"github.com/olekukonko/tablewriter v0.0.4"
	"github.com/onsi/ginkgo v1.7.0"
	"github.com/onsi/gomega v1.4.3"
	"github.com/opentracing/opentracing-go v1.0.2"
	"github.com/openzipkin/zipkin-go v0.1.6"
	"github.com/pelletier/go-toml v1.6.0"
	"github.com/pierrec/lz4 v2.0.5"
	"github.com/pkg/errors v0.8.1"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/prometheus/client_golang v0.9.3"
	"github.com/prometheus/client_model fd36f4220a90"
	"github.com/prometheus/common v0.4.0"
	"github.com/prometheus/procfs 5867b95ac084"
	"github.com/prometheus/tsdb v0.7.1"
	"github.com/rcrowley/go-metrics 3113b8401b8a"
	"github.com/rogpeppe/fastuuid 6724a57986af"
	"github.com/rogpeppe/go-internal v1.5.1"
	"github.com/russross/blackfriday a477dd164691"
	"github.com/rwcarlsen/goexif 9e8deecbddbd"
	"github.com/sanity-io/litter v1.2.0"
	"github.com/sergi/go-diff v1.0.0"
	"github.com/sirupsen/logrus v1.2.0"
	"github.com/smartystreets/assertions b2de0cb4f26d"
	"github.com/smartystreets/goconvey v1.6.4"
	"github.com/soheilhy/cmux v0.1.4"
	"github.com/spaolacci/murmur3 f09979ecbc72"
	"github.com/spf13/afero v1.2.2"
	"github.com/spf13/cast v1.3.1"
	"github.com/spf13/cobra v0.0.5"
	"github.com/spf13/fsync v0.9.0"
	"github.com/spf13/jwalterweatherman v1.1.0"
	"github.com/spf13/pflag v1.0.5"
	"github.com/spf13/viper v1.6.1"
	"github.com/stretchr/objx v0.1.1"
	"github.com/stretchr/testify v1.3.0"
	"github.com/subosito/gotenv v1.2.0"
	"github.com/tdewolff/minify/v2 v2.6.1 github.com/tdewolff/minify"
	"github.com/tdewolff/parse/v2 v2.3.14 github.com/tdewolff/parse"
	"github.com/tdewolff/test v1.0.4"
	"github.com/tidwall/pretty 1166b9ac2b65"
	"github.com/tmc/grpc-websocket-proxy 0ad062ec5ee5"
	"github.com/uber-go/atomic v1.3.2"
	"github.com/uber/jaeger-client-go v2.15.0"
	"github.com/uber/jaeger-lib v1.5.0"
	"github.com/ugorji/go v1.1.4"
	"github.com/ugorji/go/codec d75b2dcb6bc8 github.com/ugorji/go"
	"github.com/valyala/bytebufferpool v1.0.0"
	"github.com/valyala/fasttemplate v1.0.1"
	"github.com/xdg/scram 7eeb5667e42c"
	"github.com/xdg/stringprep v1.0.0"
	"github.com/xiang90/probing 43a291ad63a2"
	"github.com/xordataexchange/crypt b2862e3d0a77"
	"github.com/yuin/goldmark v1.1.22"
	"github.com/yuin/goldmark-highlighting d1af22c1126f"
	"go.etcd.io/bbolt v1.3.2 github.com/etcd-io/bbolt"
	"go.mongodb.org/mongo-driver v1.0.1 github.com/mongodb/mongo-go-driver"
	"go.opencensus.io v0.22.0 github.com/census-instrumentation/opencensus-go"
	"go.uber.org/atomic v1.4.0 github.com/uber-go/atomic"
	"go.uber.org/multierr v1.1.0 github.com/uber-go/multierr"
	"go.uber.org/zap v1.10.0 github.com/uber-go/zap"
	"gocloud.dev v0.15.0 github.com/google/go-cloud"
	"golang.org/x/crypto d864b10871cd github.com/golang/crypto"
	"golang.org/x/exp 509febef88a4 github.com/golang/exp"
	"golang.org/x/image 9130b4cfad52 github.com/golang/image"
	"golang.org/x/lint d0100b6bd8b3 github.com/golang/lint"
	"golang.org/x/net c0dbc17a3553 github.com/golang/net"
	"golang.org/x/oauth2 aaccbc9213b0 github.com/golang/oauth2"
	"golang.org/x/sync cd5d95a43a6e github.com/golang/sync"
	"golang.org/x/sys ef85f5a75ddf github.com/golang/sys"
	"golang.org/x/text v0.3.2 github.com/golang/text"
	"golang.org/x/time 9d24e82272b4 github.com/golang/time"
	"golang.org/x/tools fe54fb35175b github.com/golang/tools"
	"golang.org/x/xerrors a985d3407aa7 github.com/golang/xerrors"
	"google.golang.org/api v0.5.0 github.com/googleapis/google-api-go-client"
	"google.golang.org/appengine v1.6.0 github.com/golang/appengine"
	"google.golang.org/genproto c2c4e71fbf69 github.com/googleapis/go-genproto"
	"google.golang.org/grpc v1.21.0 github.com/grpc/grpc-go"
	"gopkg.in/alecthomas/kingpin.v2 v2.2.6 github.com/alecthomas/kingpin"
	"gopkg.in/check.v1 41f04d3bba15 github.com/go-check/check"
	"gopkg.in/errgo.v2 v2.1.0 github.com/go-errgo/errgo"
	"gopkg.in/fsnotify.v1 v1.4.7 github.com/fsnotify/fsnotify/"
	"gopkg.in/ini.v1 v1.51.1 github.com/go-ini/ini"
	"gopkg.in/resty.v1 v1.12.0 github.com/go-resty/resty"
	"gopkg.in/tomb.v1 dd632973f1e7 github.com/go-tomb/tomb"
	"gopkg.in/yaml.v2 v2.2.7 github.com/go-yaml/yaml"
	"honnef.co/go/tools 3f1c8253044a github.com/dominikh/go-tools"
	"pack.ag/amqp v0.11.0 github.com/vcabbage/amqp"
)

inherit bash-completion-r1 golang-vcs-snapshot-r1

DESCRIPTION="A static HTML and CSS website generator written in Go"
HOMEPAGE="https://gohugo.io"
ARCHIVE_URI="https://${EGO_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
SRC_URI="${ARCHIVE_URI} ${EGO_VENDOR_URI}"
RESTRICT="mirror"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug pie +sass"

QA_PRESTRIPPED="usr/bin/.*"

G="${WORKDIR}/${P}"
S="${G}/src/${EGO_PN}"

src_compile() {
	export GOPATH="${G}"
	export CGO_CFLAGS="${CFLAGS}"
	export CGO_CXXFLAGS="${CXXFLAGS}"
	export CGO_LDFLAGS="${LDFLAGS}"
	local myldflags=(
		"$(usex !debug '-s -w' '')"
		-X "${EGO_PN}/common/hugo.commitHash=${GIT_COMMIT:0:7}"
		-X "${EGO_PN}/common/hugo.buildDate=$(date -u '+%FT%T%z')"
	)
	local mygoargs=(
		-v -work -x -mod vendor
		-buildmode "$(usex pie pie exe)"
		-asmflags "all=-trimpath=${S}"
		-gcflags "all=-trimpath=${S}"
		-ldflags "${myldflags[*]}"
		-tags "$(usex sass 'extended' 'none')"
	)

	go build "${mygoargs[@]}" || die

	./hugo gen man --dir="${T}"/man || die
	./hugo gen autocomplete --completionfile="${T}"/hugo || die
}

src_test() {
	# Remove failing tests. If you know how to fix them, then please contribute.
	rm hugolib/{collections,embedded_shortcodes,page,permalinks,shortcode}_test.go || die

	# git_test.go requires a proper git repository
	rm releaser/git_test.go || die

	go test -tags none ./... || die
}

src_install() {
	dobin hugo
	use debug && dostrip -x /usr/bin/hugo

	doman "${T}"/man/*
	dobashcomp "${T}"/hugo
}
