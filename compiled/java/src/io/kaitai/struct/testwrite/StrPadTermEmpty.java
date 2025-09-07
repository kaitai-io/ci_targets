// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import io.kaitai.struct.ConsistencyError;

public class StrPadTermEmpty extends KaitaiStruct.ReadWrite {
    public static StrPadTermEmpty fromFile(String fileName) throws IOException {
        return new StrPadTermEmpty(new ByteBufferKaitaiStream(fileName));
    }
    public StrPadTermEmpty() {
        this(null, null, null);
    }

    public StrPadTermEmpty(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StrPadTermEmpty(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public StrPadTermEmpty(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, StrPadTermEmpty _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.strPad = new String(KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 64), StandardCharsets.UTF_8);
        this.strTerm = new String(KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 64, false), StandardCharsets.UTF_8);
        this.strTermAndPad = new String(KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 43), (byte) 64, false), StandardCharsets.UTF_8);
        this.strTermInclude = new String(KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 64, true), StandardCharsets.UTF_8);
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBytesLimit((this.strPad).getBytes(Charset.forName("UTF-8")), 20, (byte) 64, (byte) 64);
        this._io.writeBytesLimit((this.strTerm).getBytes(Charset.forName("UTF-8")), 20, (byte) 64, (byte) 0);
        this._io.writeBytesLimit((this.strTermAndPad).getBytes(Charset.forName("UTF-8")), 20, (byte) 64, (byte) 43);
        this._io.writeBytesLimit((this.strTermInclude).getBytes(Charset.forName("UTF-8")), 20, (byte) 0, (byte) 0);
    }

    public void _check() {
        if ((this.strPad).getBytes(Charset.forName("UTF-8")).length > 20)
            throw new ConsistencyError("str_pad", 20, (this.strPad).getBytes(Charset.forName("UTF-8")).length);
        if ( (((this.strPad).getBytes(Charset.forName("UTF-8")).length != 0) && (((this.strPad).getBytes(Charset.forName("UTF-8"))[((Number) ((this.strPad).getBytes(Charset.forName("UTF-8")).length - 1)).intValue()] & 0xff) == 64)) )
            throw new ConsistencyError("str_pad", 64, ((this.strPad).getBytes(Charset.forName("UTF-8"))[((Number) ((this.strPad).getBytes(Charset.forName("UTF-8")).length - 1)).intValue()] & 0xff));
        if ((this.strTerm).getBytes(Charset.forName("UTF-8")).length > 20)
            throw new ConsistencyError("str_term", 20, (this.strTerm).getBytes(Charset.forName("UTF-8")).length);
        if (KaitaiStream.byteArrayIndexOf((this.strTerm).getBytes(Charset.forName("UTF-8")), ((byte) 64)) != -1)
            throw new ConsistencyError("str_term", -1, KaitaiStream.byteArrayIndexOf((this.strTerm).getBytes(Charset.forName("UTF-8")), ((byte) 64)));
        if ((this.strTermAndPad).getBytes(Charset.forName("UTF-8")).length > 20)
            throw new ConsistencyError("str_term_and_pad", 20, (this.strTermAndPad).getBytes(Charset.forName("UTF-8")).length);
        if (KaitaiStream.byteArrayIndexOf((this.strTermAndPad).getBytes(Charset.forName("UTF-8")), ((byte) 64)) != -1)
            throw new ConsistencyError("str_term_and_pad", -1, KaitaiStream.byteArrayIndexOf((this.strTermAndPad).getBytes(Charset.forName("UTF-8")), ((byte) 64)));
        if ((this.strTermAndPad).getBytes(Charset.forName("UTF-8")).length == 20) {
            if ( (((this.strTermAndPad).getBytes(Charset.forName("UTF-8")).length != 0) && (((this.strTermAndPad).getBytes(Charset.forName("UTF-8"))[((Number) ((this.strTermAndPad).getBytes(Charset.forName("UTF-8")).length - 1)).intValue()] & 0xff) == 43)) )
                throw new ConsistencyError("str_term_and_pad", 43, ((this.strTermAndPad).getBytes(Charset.forName("UTF-8"))[((Number) ((this.strTermAndPad).getBytes(Charset.forName("UTF-8")).length - 1)).intValue()] & 0xff));
        }
        if ((this.strTermInclude).getBytes(Charset.forName("UTF-8")).length > 20)
            throw new ConsistencyError("str_term_include", 20, (this.strTermInclude).getBytes(Charset.forName("UTF-8")).length);
        if ((this.strTermInclude).getBytes(Charset.forName("UTF-8")).length < 20) {
            if ((this.strTermInclude).getBytes(Charset.forName("UTF-8")).length == 0)
                throw new ConsistencyError("str_term_include", 0, (this.strTermInclude).getBytes(Charset.forName("UTF-8")).length);
            if (KaitaiStream.byteArrayIndexOf((this.strTermInclude).getBytes(Charset.forName("UTF-8")), ((byte) 64)) != (this.strTermInclude).getBytes(Charset.forName("UTF-8")).length - 1)
                throw new ConsistencyError("str_term_include", (this.strTermInclude).getBytes(Charset.forName("UTF-8")).length - 1, KaitaiStream.byteArrayIndexOf((this.strTermInclude).getBytes(Charset.forName("UTF-8")), ((byte) 64)));
        }
        if ((this.strTermInclude).getBytes(Charset.forName("UTF-8")).length == 20) {
            if ( ((KaitaiStream.byteArrayIndexOf((this.strTermInclude).getBytes(Charset.forName("UTF-8")), ((byte) 64)) != -1) && (KaitaiStream.byteArrayIndexOf((this.strTermInclude).getBytes(Charset.forName("UTF-8")), ((byte) 64)) != (this.strTermInclude).getBytes(Charset.forName("UTF-8")).length - 1)) )
                throw new ConsistencyError("str_term_include", (this.strTermInclude).getBytes(Charset.forName("UTF-8")).length - 1, KaitaiStream.byteArrayIndexOf((this.strTermInclude).getBytes(Charset.forName("UTF-8")), ((byte) 64)));
        }
        _dirty = false;
    }
    private String strPad;
    private String strTerm;
    private String strTermAndPad;
    private String strTermInclude;
    private StrPadTermEmpty _root;
    private KaitaiStruct.ReadWrite _parent;
    public String strPad() { return strPad; }
    public void setStrPad(String _v) { _dirty = true; strPad = _v; }
    public String strTerm() { return strTerm; }
    public void setStrTerm(String _v) { _dirty = true; strTerm = _v; }
    public String strTermAndPad() { return strTermAndPad; }
    public void setStrTermAndPad(String _v) { _dirty = true; strTermAndPad = _v; }
    public String strTermInclude() { return strTermInclude; }
    public void setStrTermInclude(String _v) { _dirty = true; strTermInclude = _v; }
    public StrPadTermEmpty _root() { return _root; }
    public void set_root(StrPadTermEmpty _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
