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

type PositionAbs struct {
	IndexOffset uint32
	_io *kaitai.Stream
	_root *PositionAbs
	_parent interface{}
	_f_index bool
	index *PositionAbs_IndexObj
}

func (this *PositionAbs) Read(io *kaitai.Stream, parent interface{}, root *PositionAbs) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.IndexOffset = tmp1
	return err
}
func (this *PositionAbs) Index() (v *PositionAbs_IndexObj, err error) {
	if (this._f_index) {
		return this.index, nil
	}
	_pos, err := this._io.Pos()
	if err != nil {
		return nil, err
	}
	_, err = this._io.Seek(int64(this.IndexOffset), io.SeekStart)
	if err != nil {
		return nil, err
	}
	tmp2 := new(PositionAbs_IndexObj)
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return nil, err
	}
	this.index = tmp2
	_, err = this._io.Seek(_pos, io.SeekStart)
	if err != nil {
		return nil, err
	}
	this._f_index = true
	return this.index, nil
}
type PositionAbs_IndexObj struct {
	Entry string
	_io *kaitai.Stream
	_root *PositionAbs
	_parent *PositionAbs
}

func (this *PositionAbs_IndexObj) Read(io *kaitai.Stream, parent *PositionAbs, root *PositionAbs) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3, err := this._io.ReadBytesTerm(0, false, true, true)
	if err != nil {
		return err
	}
	this.Entry = string(tmp3)
	return err
}
