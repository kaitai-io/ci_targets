// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type IndexSizes struct {
	Qty uint32
	Sizes []uint32
	Bufs []string
	_io *kaitai.Stream
	_root *IndexSizes
	_parent interface{}
}
func NewIndexSizes() *IndexSizes {
	return &IndexSizes{
	}
}

func (this *IndexSizes) Read(io *kaitai.Stream, parent interface{}, root *IndexSizes) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Qty = uint32(tmp1)
	this.Sizes = make([]uint32, this.Qty)
	for i := range this.Sizes {
		tmp2, err := this._io.ReadU4le()
		if err != nil {
			return err
		}
		this.Sizes[i] = tmp2
	}
	this.Bufs = make([]string, this.Qty)
	for i := range this.Bufs {
		tmp3, err := this._io.ReadBytes(int(this.Sizes[i]))
		if err != nil {
			return err
		}
		tmp3 = tmp3
		this.Bufs[i] = string(tmp3)
	}
	return err
}
