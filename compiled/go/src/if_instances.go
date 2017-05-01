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

type IfInstances struct {
	_io *kaitai.Stream
	_root *IfInstances
	_parent interface{}
	_f_neverHappens bool
	neverHappens uint8
}

func (this *IfInstances) Read(io *kaitai.Stream, parent interface{}, root *IfInstances) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
func (this *IfInstances) NeverHappens() (v uint8, err error) {
	if (this._f_neverHappens) {
		return this.neverHappens, nil
	}
	if (false) {
		_pos, err := this._io.Pos()
		if err != nil {
			return 0, err
		}
		_, err = this._io.Seek(int64(100500), io.SeekStart)
		if err != nil {
			return 0, err
		}
		tmp1, err := this._io.ReadU1()
		if err != nil {
			return 0, err
		}
		this.neverHappens = tmp1
		_, err = this._io.Seek(_pos, io.SeekStart)
		if err != nil {
			return 0, err
		}
	}
	this._f_neverHappens = true
	return this.neverHappens, nil
}
