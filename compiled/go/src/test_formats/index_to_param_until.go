// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type IndexToParamUntil struct {
	Qty uint32
	Sizes []uint32
	Blocks []*IndexToParamUntil_Block
	_io *kaitai.Stream
	_root *IndexToParamUntil
	_parent interface{}
}

func (this *IndexToParamUntil) Read(io *kaitai.Stream, parent interface{}, root *IndexToParamUntil) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Qty = tmp1
	this.Sizes = make([]uint32, this.Qty)
	for i := range this.Sizes {
		tmp2, err := this._io.ReadU4le()
		if err != nil {
			return err
		}
		this.Sizes[i] = tmp2
	}
	this.Blocks = new []*IndexToParamUntil_Block();
	{
		*IndexToParamUntil_Block _it;
		do {
			tmp3 := new(IndexToParamUntil_Block)
			err = tmp3.Read(this._io, this, this._root)
			if err != nil {
				return err
			}
			_it = tmp3;
			this.Blocks.add(_it);
		} while (!(this._io.EOF()));
	}
	return err
}
type IndexToParamUntil_Block struct {
	Buf string
	_io *kaitai.Stream
	_root *IndexToParamUntil
	_parent *IndexToParamUntil
}

func (this *IndexToParamUntil_Block) Read(io *kaitai.Stream, parent *IndexToParamUntil, root *IndexToParamUntil) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp4, err := this._io.ReadBytes(int(this._root.Sizes[this.Idx]))
	if err != nil {
		return err
	}
	this.Buf = string(tmp4)
	return err
}
