// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
import "io"
import "golang.org/x/text/encoding/charmap"
import "golang.org/x/text/encoding/traditionalchinese"
import "golang.org/x/text/encoding/japanese"

var _ = io.SeekStart
var _ = charmap.CodePage437
var _ = japanese.ShiftJIS
var _ = traditionalchinese.Big5

type Expr0 struct {
	LenOf1 uint16
	_io *kaitai.Stream
	_root *Expr0
	_parent interface{}
	_f_mustBeF7 bool
	mustBeF7 int
	_f_mustBeAbc123 bool
	mustBeAbc123 string
}

func (this *Expr0) Read(io *kaitai.Stream, parent interface{}, root *Expr0) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.LenOf1 = tmp1
	return err
}
func (this *Expr0) MustBeF7() (v int, err error) {
	if (this._f_mustBeF7) {
		return this.mustBeF7, nil
	}
	this.mustBeF7 = int((7 + 240))
	this._f_mustBeF7 = true
	return this.mustBeF7, nil
}
func (this *Expr0) MustBeAbc123() (v string, err error) {
	if (this._f_mustBeAbc123) {
		return this.mustBeAbc123, nil
	}
	this.mustBeAbc123 = string("abc" + "123")
	this._f_mustBeAbc123 = true
	return this.mustBeAbc123, nil
}
