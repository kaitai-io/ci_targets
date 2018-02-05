// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;

public class InstanceStdArray extends KaitaiStruct {
    public static InstanceStdArray fromFile(String fileName) throws IOException {
        return new InstanceStdArray(new ByteBufferKaitaiStream(fileName));
    }

    public InstanceStdArray(KaitaiStream _io) {
        this(_io, null, null);
    }

    public InstanceStdArray(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public InstanceStdArray(KaitaiStream _io, KaitaiStruct _parent, InstanceStdArray _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.ofs = this._io.readU4le();
        this.entrySize = this._io.readU4le();
        this.qtyEntries = this._io.readU4le();
    }
    private ArrayList<byte[]> entries;
    public ArrayList<byte[]> entries() {
        if (this.entries != null)
            return this.entries;
        long _pos = this._io.pos();
        this._io.seek(ofs());
        entries = new ArrayList<byte[]>((int) (qtyEntries()));
        for (int i = 0; i < qtyEntries(); i++) {
            this.entries.add(this._io.readBytes(entrySize()));
        }
        this._io.seek(_pos);
        return this.entries;
    }
    private long ofs;
    private long entrySize;
    private long qtyEntries;
    private InstanceStdArray _root;
    private KaitaiStruct _parent;
    public long ofs() { return ofs; }
    public long entrySize() { return entrySize; }
    public long qtyEntries() { return qtyEntries; }
    public InstanceStdArray _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
