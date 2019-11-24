// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"bytes"
)

type ProcessRepeatUsertype struct {
	Blocks []*ProcessRepeatUsertype_Block
	_io *kaitai.Stream
	_root *ProcessRepeatUsertype
	_parent interface{}
	_raw_Blocks [][]byte
	_raw__raw_Blocks [][]byte
}

func (this *ProcessRepeatUsertype) Read(io *kaitai.Stream, parent interface{}, root *ProcessRepeatUsertype) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	this._raw_Blocks = make([][]byte, 2)
	this.Blocks = make([]*ProcessRepeatUsertype_Block, 2)
	for i := range this.Blocks {
		tmp1, err := this._io.ReadBytes(int(5))
		if err != nil {
			return err
		}
		tmp1 = tmp1
		this._raw__raw_Blocks[i] = tmp1
		this._raw_Blocks = kaitai.ProcessXOR(this._raw__raw_Blocks, []byte{158})
		_io__raw_Blocks := kaitai.NewStream(bytes.NewReader(this._raw_Blocks[len(this._raw_Blocks) - 1]))
		tmp2 := new(ProcessRepeatUsertype_Block)
		err = tmp2.Read(_io__raw_Blocks, this, this._root)
		if err != nil {
			return err
		}
		this.Blocks[i] = tmp2
	}
	return err
}
type ProcessRepeatUsertype_Block struct {
	A int32
	B int8
	_io *kaitai.Stream
	_root *ProcessRepeatUsertype
	_parent *ProcessRepeatUsertype
}

func (this *ProcessRepeatUsertype_Block) Read(io *kaitai.Stream, parent *ProcessRepeatUsertype, root *ProcessRepeatUsertype) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3, err := this._io.ReadS4le()
	if err != nil {
		return err
	}
	this.A = int32(tmp3)
	tmp4, err := this._io.ReadS1()
	if err != nil {
		return err
	}
	this.B = tmp4
	return err
}
