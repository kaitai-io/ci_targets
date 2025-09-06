// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.List;

public class RepeatEosBit extends KaitaiStruct.ReadWrite {
    public static RepeatEosBit fromFile(String fileName) throws IOException {
        return new RepeatEosBit(new ByteBufferKaitaiStream(fileName));
    }
    public RepeatEosBit() {
        this(null, null, null);
    }

    public RepeatEosBit(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatEosBit(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public RepeatEosBit(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, RepeatEosBit _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.nibbles = new ArrayList<Long>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this.nibbles.add(this._io.readBitsIntBe(4));
                i++;
            }
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.nibbles.size(); i++) {
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        for (int i = 0; i < this.nibbles.size(); i++) {
            if (this._io.isEof())
                throw new ConsistencyError("nibbles", this._io.size() - this._io.pos(), 0);
            this._io.writeBitsIntBe(4, this.nibbles.get(((Number) (i)).intValue()));
        }
        if (!(this._io.isEof()))
            throw new ConsistencyError("nibbles", this._io.size() - this._io.pos(), 0);
    }

    public void _check() {
        for (int i = 0; i < this.nibbles.size(); i++) {
        }
        _dirty = false;
    }
    private List<Long> nibbles;
    private RepeatEosBit _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<Long> nibbles() { return nibbles; }
    public void setNibbles(List<Long> _v) { _dirty = true; nibbles = _v; }
    public RepeatEosBit _root() { return _root; }
    public void set_root(RepeatEosBit _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
