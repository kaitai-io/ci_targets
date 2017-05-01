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

type RepeatNStrzDouble struct {
	Qty uint32
	Lines1 []string
	Lines2 []string
	_io *kaitai.Stream
	_root *RepeatNStrzDouble
	_parent interface{}
}

func (this *RepeatNStrzDouble) Read(io *kaitai.Stream, parent interface{}, root *RepeatNStrzDouble) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Qty = tmp1
	this.Lines1 = make([]string, (this.Qty / 2))
	for i := range this.Lines1 {
		tmp2, err := this._io.ReadBytesTerm(0, false, true, true)
		if err != nil {
			return err
		}
		this.Lines1.add(string(tmp2));
	}
	this.Lines2 = make([]string, (this.Qty / 2))
	for i := range this.Lines2 {
		tmp3, err := this._io.ReadBytesTerm(0, false, true, true)
		if err != nil {
			return err
		}
		this.Lines2.add(string(tmp3));
	}
	return err
}
