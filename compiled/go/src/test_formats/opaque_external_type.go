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

type OpaqueExternalType struct {
	One *TermStrz
	_io *kaitai.Stream
	_root *OpaqueExternalType
	_parent interface{}
}

func (this *OpaqueExternalType) Read(io *kaitai.Stream, parent interface{}, root *OpaqueExternalType) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := new(TermStrz)
	err = tmp1.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.One = tmp1
	return err
}
