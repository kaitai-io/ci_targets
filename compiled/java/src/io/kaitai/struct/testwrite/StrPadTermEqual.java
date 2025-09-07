// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import io.kaitai.struct.ConsistencyError;

public class StrPadTermEqual extends KaitaiStruct.ReadWrite {
    public static StrPadTermEqual fromFile(String fileName) throws IOException {
        return new StrPadTermEqual(new ByteBufferKaitaiStream(fileName));
    }
    public StrPadTermEqual() {
        this(null, null, null);
    }

    public StrPadTermEqual(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StrPadTermEqual(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public StrPadTermEqual(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, StrPadTermEqual _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.s1 = new String(KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 64, false), StandardCharsets.UTF_8);
        this.s2 = new String(KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 43), (byte) 64, true), StandardCharsets.UTF_8);
        this.s3 = new String(KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 43, false), StandardCharsets.UTF_8);
        this.s4 = new String(KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 46, true), StandardCharsets.UTF_8);
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBytesLimit((this.s1).getBytes(Charset.forName("UTF-8")), 20, (byte) 64, (byte) 64);
        this._io.writeBytesLimit((this.s2).getBytes(Charset.forName("UTF-8")), 20, (byte) 43, (byte) 43);
        this._io.writeBytesLimit((this.s3).getBytes(Charset.forName("UTF-8")), 20, (byte) 43, (byte) 43);
        this._io.writeBytesLimit((this.s4).getBytes(Charset.forName("UTF-8")), 20, (byte) 46, (byte) 46);
    }

    public void _check() {
        if ((this.s1).getBytes(Charset.forName("UTF-8")).length > 20)
            throw new ConsistencyError("s1", 20, (this.s1).getBytes(Charset.forName("UTF-8")).length);
        if (KaitaiStream.byteArrayIndexOf((this.s1).getBytes(Charset.forName("UTF-8")), ((byte) 64)) != -1)
            throw new ConsistencyError("s1", -1, KaitaiStream.byteArrayIndexOf((this.s1).getBytes(Charset.forName("UTF-8")), ((byte) 64)));
        if ((this.s2).getBytes(Charset.forName("UTF-8")).length > 20)
            throw new ConsistencyError("s2", 20, (this.s2).getBytes(Charset.forName("UTF-8")).length);
        if ( ((KaitaiStream.byteArrayIndexOf((this.s2).getBytes(Charset.forName("UTF-8")), ((byte) 64)) != -1) && (KaitaiStream.byteArrayIndexOf((this.s2).getBytes(Charset.forName("UTF-8")), ((byte) 64)) != (this.s2).getBytes(Charset.forName("UTF-8")).length - 1)) )
            throw new ConsistencyError("s2", (this.s2).getBytes(Charset.forName("UTF-8")).length - 1, KaitaiStream.byteArrayIndexOf((this.s2).getBytes(Charset.forName("UTF-8")), ((byte) 64)));
        if (KaitaiStream.byteArrayIndexOf((this.s2).getBytes(Charset.forName("UTF-8")), ((byte) 64)) == -1) {
            if ( (((this.s2).getBytes(Charset.forName("UTF-8")).length != 0) && (((this.s2).getBytes(Charset.forName("UTF-8"))[((Number) ((this.s2).getBytes(Charset.forName("UTF-8")).length - 1)).intValue()] & 0xff) == 43)) )
                throw new ConsistencyError("s2", 43, ((this.s2).getBytes(Charset.forName("UTF-8"))[((Number) ((this.s2).getBytes(Charset.forName("UTF-8")).length - 1)).intValue()] & 0xff));
        }
        if ((this.s3).getBytes(Charset.forName("UTF-8")).length > 20)
            throw new ConsistencyError("s3", 20, (this.s3).getBytes(Charset.forName("UTF-8")).length);
        if (KaitaiStream.byteArrayIndexOf((this.s3).getBytes(Charset.forName("UTF-8")), ((byte) 43)) != -1)
            throw new ConsistencyError("s3", -1, KaitaiStream.byteArrayIndexOf((this.s3).getBytes(Charset.forName("UTF-8")), ((byte) 43)));
        if ((this.s4).getBytes(Charset.forName("UTF-8")).length > 20)
            throw new ConsistencyError("s4", 20, (this.s4).getBytes(Charset.forName("UTF-8")).length);
        if ((this.s4).getBytes(Charset.forName("UTF-8")).length < 20) {
            if ((this.s4).getBytes(Charset.forName("UTF-8")).length == 0)
                throw new ConsistencyError("s4", 0, (this.s4).getBytes(Charset.forName("UTF-8")).length);
            if (KaitaiStream.byteArrayIndexOf((this.s4).getBytes(Charset.forName("UTF-8")), ((byte) 46)) != (this.s4).getBytes(Charset.forName("UTF-8")).length - 1)
                throw new ConsistencyError("s4", (this.s4).getBytes(Charset.forName("UTF-8")).length - 1, KaitaiStream.byteArrayIndexOf((this.s4).getBytes(Charset.forName("UTF-8")), ((byte) 46)));
        }
        if ((this.s4).getBytes(Charset.forName("UTF-8")).length == 20) {
            if ( ((KaitaiStream.byteArrayIndexOf((this.s4).getBytes(Charset.forName("UTF-8")), ((byte) 46)) != -1) && (KaitaiStream.byteArrayIndexOf((this.s4).getBytes(Charset.forName("UTF-8")), ((byte) 46)) != (this.s4).getBytes(Charset.forName("UTF-8")).length - 1)) )
                throw new ConsistencyError("s4", (this.s4).getBytes(Charset.forName("UTF-8")).length - 1, KaitaiStream.byteArrayIndexOf((this.s4).getBytes(Charset.forName("UTF-8")), ((byte) 46)));
        }
        _dirty = false;
    }
    private String s1;
    private String s2;
    private String s3;
    private String s4;
    private StrPadTermEqual _root;
    private KaitaiStruct.ReadWrite _parent;
    public String s1() { return s1; }
    public void setS1(String _v) { _dirty = true; s1 = _v; }
    public String s2() { return s2; }
    public void setS2(String _v) { _dirty = true; s2 = _v; }
    public String s3() { return s3; }
    public void setS3(String _v) { _dirty = true; s3 = _v; }
    public String s4() { return s4; }
    public void setS4(String _v) { _dirty = true; s4 = _v; }
    public StrPadTermEqual _root() { return _root; }
    public void set_root(StrPadTermEqual _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
