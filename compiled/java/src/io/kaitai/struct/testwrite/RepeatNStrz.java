// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import io.kaitai.struct.ConsistencyError;
import java.util.List;

public class RepeatNStrz extends KaitaiStruct.ReadWrite {
    public static RepeatNStrz fromFile(String fileName) throws IOException {
        return new RepeatNStrz(new ByteBufferKaitaiStream(fileName));
    }
    public RepeatNStrz() {
        this(null, null, null);
    }

    public RepeatNStrz(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatNStrz(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public RepeatNStrz(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, RepeatNStrz _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.qty = this._io.readU4le();
        this.lines = new ArrayList<String>();
        for (int i = 0; i < qty(); i++) {
            this.lines.add(new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.UTF_8));
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.lines.size(); i++) {
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU4le(this.qty);
        for (int i = 0; i < this.lines.size(); i++) {
            this._io.writeBytes((this.lines.get(((Number) (i)).intValue())).getBytes(Charset.forName("UTF-8")));
            this._io.writeU1(0);
        }
    }

    public void _check() {
        if (this.lines.size() != qty())
            throw new ConsistencyError("lines", qty(), this.lines.size());
        for (int i = 0; i < this.lines.size(); i++) {
            if (KaitaiStream.byteArrayIndexOf((this.lines.get(((Number) (i)).intValue())).getBytes(Charset.forName("UTF-8")), ((byte) 0)) != -1)
                throw new ConsistencyError("lines", -1, KaitaiStream.byteArrayIndexOf((this.lines.get(((Number) (i)).intValue())).getBytes(Charset.forName("UTF-8")), ((byte) 0)));
        }
        _dirty = false;
    }
    private long qty;
    private List<String> lines;
    private RepeatNStrz _root;
    private KaitaiStruct.ReadWrite _parent;
    public long qty() { return qty; }
    public void setQty(long _v) { _dirty = true; qty = _v; }
    public List<String> lines() { return lines; }
    public void setLines(List<String> _v) { _dirty = true; lines = _v; }
    public RepeatNStrz _root() { return _root; }
    public void set_root(RepeatNStrz _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
