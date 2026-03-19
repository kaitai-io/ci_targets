// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.List;

public class RepeatEosBitsB1 extends KaitaiStruct.ReadWrite {
    public static RepeatEosBitsB1 fromFile(String fileName) throws IOException {
        return new RepeatEosBitsB1(new ByteBufferKaitaiStream(fileName));
    }
    public RepeatEosBitsB1() {
        this(null, null, null);
    }

    public RepeatEosBitsB1(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatEosBitsB1(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public RepeatEosBitsB1(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, RepeatEosBitsB1 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.bits = new ArrayList<Boolean>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this.bits.add(this._io.readBitsIntBe(1) != 0);
                i++;
            }
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.bits.size(); i++) {
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        for (int i = 0; i < this.bits.size(); i++) {
            if (this._io.isEof())
                throw new ConsistencyError("bits", 0, this._io.size() - this._io.pos());
            this._io.writeBitsIntBe(1, (this.bits.get(((Number) (i)).intValue()) ? 1 : 0));
        }
        if (!(this._io.isEof()))
            throw new ConsistencyError("bits", 0, this._io.size() - this._io.pos());
    }

    public void _check() {
        for (int i = 0; i < this.bits.size(); i++) {
        }
        _dirty = false;
    }
    public List<Boolean> bits() { return bits; }
    public void setBits(List<Boolean> _v) { _dirty = true; bits = _v; }
    public RepeatEosBitsB1 _root() { return _root; }
    public void set_root(RepeatEosBitsB1 _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private List<Boolean> bits;
    private RepeatEosBitsB1 _root;
    private KaitaiStruct.ReadWrite _parent;
}
