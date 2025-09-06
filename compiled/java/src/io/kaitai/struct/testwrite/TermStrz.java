// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import io.kaitai.struct.ConsistencyError;

public class TermStrz extends KaitaiStruct.ReadWrite {
    public static TermStrz fromFile(String fileName) throws IOException {
        return new TermStrz(new ByteBufferKaitaiStream(fileName));
    }
    public TermStrz() {
        this(null, null, null);
    }

    public TermStrz(KaitaiStream _io) {
        this(_io, null, null);
    }

    public TermStrz(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public TermStrz(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, TermStrz _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.s1 = new String(this._io.readBytesTerm((byte) 124, false, true, true), StandardCharsets.UTF_8);
        this.s2 = new String(this._io.readBytesTerm((byte) 124, false, false, true), StandardCharsets.UTF_8);
        this.s3 = new String(this._io.readBytesTerm((byte) 64, true, true, true), StandardCharsets.UTF_8);
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBytes((this.s1).getBytes(Charset.forName("UTF-8")));
        this._io.writeU1(124);
        this._io.writeBytes((this.s2).getBytes(Charset.forName("UTF-8")));
        {
            long _pos = this._io.pos();
            this._io.writeU1(124);
            this._io.seek(_pos);
        }
        this._io.writeBytes((this.s3).getBytes(Charset.forName("UTF-8")));
    }

    public void _check() {
        if (KaitaiStream.byteArrayIndexOf((this.s1).getBytes(Charset.forName("UTF-8")), ((byte) 124)) != -1)
            throw new ConsistencyError("s1", KaitaiStream.byteArrayIndexOf((this.s1).getBytes(Charset.forName("UTF-8")), ((byte) 124)), -1);
        if (KaitaiStream.byteArrayIndexOf((this.s2).getBytes(Charset.forName("UTF-8")), ((byte) 124)) != -1)
            throw new ConsistencyError("s2", KaitaiStream.byteArrayIndexOf((this.s2).getBytes(Charset.forName("UTF-8")), ((byte) 124)), -1);
        if ((this.s3).getBytes(Charset.forName("UTF-8")).length == 0)
            throw new ConsistencyError("s3", (this.s3).getBytes(Charset.forName("UTF-8")).length, 0);
        if (KaitaiStream.byteArrayIndexOf((this.s3).getBytes(Charset.forName("UTF-8")), ((byte) 64)) != (this.s3).getBytes(Charset.forName("UTF-8")).length - 1)
            throw new ConsistencyError("s3", KaitaiStream.byteArrayIndexOf((this.s3).getBytes(Charset.forName("UTF-8")), ((byte) 64)), (this.s3).getBytes(Charset.forName("UTF-8")).length - 1);
        _dirty = false;
    }
    private String s1;
    private String s2;
    private String s3;
    private TermStrz _root;
    private KaitaiStruct.ReadWrite _parent;
    public String s1() { return s1; }
    public void setS1(String _v) { _dirty = true; s1 = _v; }
    public String s2() { return s2; }
    public void setS2(String _v) { _dirty = true; s2 = _v; }
    public String s3() { return s3; }
    public void setS3(String _v) { _dirty = true; s3 = _v; }
    public TermStrz _root() { return _root; }
    public void set_root(TermStrz _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
