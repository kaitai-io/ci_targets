// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
import "io"
import "golang.org/x/text/encoding/charmap"
import "golang.org/x/text/encoding/traditionalchinese"
import "golang.org/x/text/encoding/japanese"

var _ = io.SeekStart
var _ = charmap.CodePage437
var _ = japanese.ShiftJIS
var _ = traditionalchinese.Big5

type RepeatEosU4 struct {
	Numbers []uint32
	_io *kaitai.Stream
	_root *RepeatEosU4
	_parent interface{}
}

func (this *RepeatEosU4) Read(io *kaitai.Stream, parent interface{}, root *RepeatEosU4) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	this.Numbers = new []uint32();
	while (!this._io.isEof()) {
		tmp1, err := this._io.ReadU4le()
		if err != nil {
			return err
		}
		this.Numbers.add(tmp1);
	}
	return err
}
