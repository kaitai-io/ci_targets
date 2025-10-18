// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.List;

public class RepeatEosU4 extends KaitaiStruct.ReadWrite {
    public static RepeatEosU4 fromFile(String fileName) throws IOException {
        return new RepeatEosU4(new ByteBufferKaitaiStream(fileName));
    }
    public RepeatEosU4() {
        this(null, null, null);
    }

    public RepeatEosU4(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatEosU4(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public RepeatEosU4(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, RepeatEosU4 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.numbers = new ArrayList<Long>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this.numbers.add(this._io.readU4le());
                i++;
            }
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.numbers.size(); i++) {
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        for (int i = 0; i < this.numbers.size(); i++) {
            if (this._io.isEof())
                throw new ConsistencyError("numbers", 0, this._io.size() - this._io.pos());
            this._io.writeU4le(this.numbers.get(((Number) (i)).intValue()));
        }
        if (!(this._io.isEof()))
            throw new ConsistencyError("numbers", 0, this._io.size() - this._io.pos());
    }

    public void _check() {
        for (int i = 0; i < this.numbers.size(); i++) {
        }
        _dirty = false;
    }
    public List<Long> numbers() { return numbers; }
    public void setNumbers(List<Long> _v) { _dirty = true; numbers = _v; }
    public RepeatEosU4 _root() { return _root; }
    public void set_root(RepeatEosU4 _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private List<Long> numbers;
    private RepeatEosU4 _root;
    private KaitaiStruct.ReadWrite _parent;
}
