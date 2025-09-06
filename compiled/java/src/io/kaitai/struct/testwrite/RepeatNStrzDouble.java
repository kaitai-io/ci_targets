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

public class RepeatNStrzDouble extends KaitaiStruct.ReadWrite {
    public static RepeatNStrzDouble fromFile(String fileName) throws IOException {
        return new RepeatNStrzDouble(new ByteBufferKaitaiStream(fileName));
    }
    public RepeatNStrzDouble() {
        this(null, null, null);
    }

    public RepeatNStrzDouble(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatNStrzDouble(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public RepeatNStrzDouble(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, RepeatNStrzDouble _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.qty = this._io.readU4le();
        this.lines1 = new ArrayList<String>();
        for (int i = 0; i < qty() / 2; i++) {
            this.lines1.add(new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.UTF_8));
        }
        this.lines2 = new ArrayList<String>();
        for (int i = 0; i < qty() / 2; i++) {
            this.lines2.add(new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.UTF_8));
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.lines1.size(); i++) {
        }
        for (int i = 0; i < this.lines2.size(); i++) {
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU4le(this.qty);
        for (int i = 0; i < this.lines1.size(); i++) {
            this._io.writeBytes((this.lines1.get(((Number) (i)).intValue())).getBytes(Charset.forName("UTF-8")));
            this._io.writeU1(0);
        }
        for (int i = 0; i < this.lines2.size(); i++) {
            this._io.writeBytes((this.lines2.get(((Number) (i)).intValue())).getBytes(Charset.forName("UTF-8")));
            this._io.writeU1(0);
        }
    }

    public void _check() {
        if (this.lines1.size() != qty() / 2)
            throw new ConsistencyError("lines1", this.lines1.size(), qty() / 2);
        for (int i = 0; i < this.lines1.size(); i++) {
            if (KaitaiStream.byteArrayIndexOf((this.lines1.get(((Number) (i)).intValue())).getBytes(Charset.forName("UTF-8")), ((byte) 0)) != -1)
                throw new ConsistencyError("lines1", KaitaiStream.byteArrayIndexOf((this.lines1.get(((Number) (i)).intValue())).getBytes(Charset.forName("UTF-8")), ((byte) 0)), -1);
        }
        if (this.lines2.size() != qty() / 2)
            throw new ConsistencyError("lines2", this.lines2.size(), qty() / 2);
        for (int i = 0; i < this.lines2.size(); i++) {
            if (KaitaiStream.byteArrayIndexOf((this.lines2.get(((Number) (i)).intValue())).getBytes(Charset.forName("UTF-8")), ((byte) 0)) != -1)
                throw new ConsistencyError("lines2", KaitaiStream.byteArrayIndexOf((this.lines2.get(((Number) (i)).intValue())).getBytes(Charset.forName("UTF-8")), ((byte) 0)), -1);
        }
        _dirty = false;
    }
    private long qty;
    private List<String> lines1;
    private List<String> lines2;
    private RepeatNStrzDouble _root;
    private KaitaiStruct.ReadWrite _parent;
    public long qty() { return qty; }
    public void setQty(long _v) { _dirty = true; qty = _v; }
    public List<String> lines1() { return lines1; }
    public void setLines1(List<String> _v) { _dirty = true; lines1 = _v; }
    public List<String> lines2() { return lines2; }
    public void setLines2(List<String> _v) { _dirty = true; lines2 = _v; }
    public RepeatNStrzDouble _root() { return _root; }
    public void set_root(RepeatNStrzDouble _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
