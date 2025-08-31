// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import io.kaitai.struct.ConsistencyError;

public class StrPadTerm extends KaitaiStruct.ReadWrite {
    public static StrPadTerm fromFile(String fileName) throws IOException {
        return new StrPadTerm(new ByteBufferKaitaiStream(fileName));
    }
    public StrPadTerm() {
        this(null, null, null);
    }

    public StrPadTerm(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StrPadTerm(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public StrPadTerm(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, StrPadTerm _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.strPad = new String(KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 64), StandardCharsets.UTF_8);
        this.strTerm = new String(KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 64, false), StandardCharsets.UTF_8);
        this.strTermAndPad = new String(KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 43), (byte) 64, false), StandardCharsets.UTF_8);
        this.strTermInclude = new String(KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 64, true), StandardCharsets.UTF_8);
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._io.writeBytesLimit((this.strPad).getBytes(Charset.forName("UTF-8")), 20, (byte) 64, (byte) 64);
        this._io.writeBytesLimit((this.strTerm).getBytes(Charset.forName("UTF-8")), 20, (byte) 64, (byte) 0);
        this._io.writeBytesLimit((this.strTermAndPad).getBytes(Charset.forName("UTF-8")), 20, (byte) 64, (byte) 43);
        this._io.writeBytesLimit((this.strTermInclude).getBytes(Charset.forName("UTF-8")), 20, (byte) 0, (byte) 0);
    }

    public void _check() {
        if ((this.strPad).getBytes(Charset.forName("UTF-8")).length > 20)
            throw new ConsistencyError("str_pad", (this.strPad).getBytes(Charset.forName("UTF-8")).length, 20);
        if ( (((this.strPad).getBytes(Charset.forName("UTF-8")).length != 0) && (((this.strPad).getBytes(Charset.forName("UTF-8"))[((Number) ((this.strPad).getBytes(Charset.forName("UTF-8")).length - 1)).intValue()] & 0xff) == 64)) )
            throw new ConsistencyError("str_pad", ((this.strPad).getBytes(Charset.forName("UTF-8"))[((Number) ((this.strPad).getBytes(Charset.forName("UTF-8")).length - 1)).intValue()] & 0xff), 64);
        if ((this.strTerm).getBytes(Charset.forName("UTF-8")).length > 20)
            throw new ConsistencyError("str_term", (this.strTerm).getBytes(Charset.forName("UTF-8")).length, 20);
        if (KaitaiStream.byteArrayIndexOf((this.strTerm).getBytes(Charset.forName("UTF-8")), ((byte) 64)) != -1)
            throw new ConsistencyError("str_term", KaitaiStream.byteArrayIndexOf((this.strTerm).getBytes(Charset.forName("UTF-8")), ((byte) 64)), -1);
        if ((this.strTermAndPad).getBytes(Charset.forName("UTF-8")).length > 20)
            throw new ConsistencyError("str_term_and_pad", (this.strTermAndPad).getBytes(Charset.forName("UTF-8")).length, 20);
        if (KaitaiStream.byteArrayIndexOf((this.strTermAndPad).getBytes(Charset.forName("UTF-8")), ((byte) 64)) != -1)
            throw new ConsistencyError("str_term_and_pad", KaitaiStream.byteArrayIndexOf((this.strTermAndPad).getBytes(Charset.forName("UTF-8")), ((byte) 64)), -1);
        if ((this.strTermAndPad).getBytes(Charset.forName("UTF-8")).length == 20) {
            if ( (((this.strTermAndPad).getBytes(Charset.forName("UTF-8")).length != 0) && (((this.strTermAndPad).getBytes(Charset.forName("UTF-8"))[((Number) ((this.strTermAndPad).getBytes(Charset.forName("UTF-8")).length - 1)).intValue()] & 0xff) == 43)) )
                throw new ConsistencyError("str_term_and_pad", ((this.strTermAndPad).getBytes(Charset.forName("UTF-8"))[((Number) ((this.strTermAndPad).getBytes(Charset.forName("UTF-8")).length - 1)).intValue()] & 0xff), 43);
        }
        if ((this.strTermInclude).getBytes(Charset.forName("UTF-8")).length > 20)
            throw new ConsistencyError("str_term_include", (this.strTermInclude).getBytes(Charset.forName("UTF-8")).length, 20);
        if ((this.strTermInclude).getBytes(Charset.forName("UTF-8")).length < 20) {
            if ((this.strTermInclude).getBytes(Charset.forName("UTF-8")).length == 0)
                throw new ConsistencyError("str_term_include", (this.strTermInclude).getBytes(Charset.forName("UTF-8")).length, 0);
            if (KaitaiStream.byteArrayIndexOf((this.strTermInclude).getBytes(Charset.forName("UTF-8")), ((byte) 64)) != (this.strTermInclude).getBytes(Charset.forName("UTF-8")).length - 1)
                throw new ConsistencyError("str_term_include", KaitaiStream.byteArrayIndexOf((this.strTermInclude).getBytes(Charset.forName("UTF-8")), ((byte) 64)), (this.strTermInclude).getBytes(Charset.forName("UTF-8")).length - 1);
        }
        if ((this.strTermInclude).getBytes(Charset.forName("UTF-8")).length == 20) {
            if ( ((KaitaiStream.byteArrayIndexOf((this.strTermInclude).getBytes(Charset.forName("UTF-8")), ((byte) 64)) != -1) && (KaitaiStream.byteArrayIndexOf((this.strTermInclude).getBytes(Charset.forName("UTF-8")), ((byte) 64)) != (this.strTermInclude).getBytes(Charset.forName("UTF-8")).length - 1)) )
                throw new ConsistencyError("str_term_include", KaitaiStream.byteArrayIndexOf((this.strTermInclude).getBytes(Charset.forName("UTF-8")), ((byte) 64)), (this.strTermInclude).getBytes(Charset.forName("UTF-8")).length - 1);
        }
    }
    private String strPad;
    private String strTerm;
    private String strTermAndPad;
    private String strTermInclude;
    private StrPadTerm _root;
    private KaitaiStruct.ReadWrite _parent;
    public String strPad() { return strPad; }
    public void setStrPad(String _v) { strPad = _v; }
    public String strTerm() { return strTerm; }
    public void setStrTerm(String _v) { strTerm = _v; }
    public String strTermAndPad() { return strTermAndPad; }
    public void setStrTermAndPad(String _v) { strTermAndPad = _v; }
    public String strTermInclude() { return strTermInclude; }
    public void setStrTermInclude(String _v) { strTermInclude = _v; }
    public StrPadTerm _root() { return _root; }
    public void set_root(StrPadTerm _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
