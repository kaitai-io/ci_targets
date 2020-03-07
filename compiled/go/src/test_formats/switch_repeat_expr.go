// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"bytes"
)

type SwitchRepeatExpr struct {
	Code uint8
	Size uint32
	Body []interface{}
	_io *kaitai.Stream
	_root *SwitchRepeatExpr
	_parent interface{}
	_raw_Body [][]byte
}

func (this *SwitchRepeatExpr) Read(io *kaitai.Stream, parent interface{}, root *SwitchRepeatExpr) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Code = tmp1
	tmp2, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Size = uint32(tmp2)
	this._raw_Body = make([][]byte, 1)
	this.Body = make([]interface{}, 1)
	for i := range this.Body {
		switch (this.Code) {
		case 17:
			tmp3, err := this._io.ReadBytes(int(this.Size))
			if err != nil {
				return err
			}
			tmp3 = tmp3
			this._raw_Body[i] = tmp3
			_io__raw_Body := kaitai.NewStream(bytes.NewReader(this._raw_Body[i]))
			tmp4 := new(SwitchRepeatExpr_One)
			err = tmp4.Read(_io__raw_Body, this, this._root)
			if err != nil {
				return err
			}
			this.Body[i] = tmp4
		case 34:
			tmp5, err := this._io.ReadBytes(int(this.Size))
			if err != nil {
				return err
			}
			tmp5 = tmp5
			this._raw_Body[i] = tmp5
			_io__raw_Body := kaitai.NewStream(bytes.NewReader(this._raw_Body[i]))
			tmp6 := new(SwitchRepeatExpr_Two)
			err = tmp6.Read(_io__raw_Body, this, this._root)
			if err != nil {
				return err
			}
			this.Body[i] = tmp6
		default:
			tmp7, err := this._io.ReadBytes(int(this.Size))
			if err != nil {
				return err
			}
			tmp7 = tmp7
			this._raw_Body[i] = tmp7
		}
	}
	return err
}
type SwitchRepeatExpr_One struct {
	First []byte
	_io *kaitai.Stream
	_root *SwitchRepeatExpr
	_parent *SwitchRepeatExpr
}

func (this *SwitchRepeatExpr_One) Read(io *kaitai.Stream, parent *SwitchRepeatExpr, root *SwitchRepeatExpr) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp8, err := this._io.ReadBytesFull()
	if err != nil {
		return err
	}
	tmp8 = tmp8
	this.First = tmp8
	return err
}
type SwitchRepeatExpr_Two struct {
	Second []byte
	_io *kaitai.Stream
	_root *SwitchRepeatExpr
	_parent *SwitchRepeatExpr
}

func (this *SwitchRepeatExpr_Two) Read(io *kaitai.Stream, parent *SwitchRepeatExpr, root *SwitchRepeatExpr) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp9, err := this._io.ReadBytesFull()
	if err != nil {
		return err
	}
	tmp9 = tmp9
	this.Second = tmp9
	return err
}
