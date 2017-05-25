// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.Charset;

public class StrPadTerm extends KaitaiStruct {
    public static StrPadTerm fromFile(String fileName) throws IOException {
        return new StrPadTerm(new KaitaiStream(fileName));
    }

    public StrPadTerm(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _init();
    }

    public StrPadTerm(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _init();
    }

    public StrPadTerm(KaitaiStream _io, KaitaiStruct _parent, StrPadTerm _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _init();
    }

    private void _init() {
        _read();
    }
    private void _read() {
        this.strPad = new String(KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 64), Charset.forName("UTF-8"));
        this.strTerm = new String(KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 64, false), Charset.forName("UTF-8"));
        this.strTermAndPad = new String(KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 43), (byte) 64, false), Charset.forName("UTF-8"));
        this.strTermInclude = new String(KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 64, true), Charset.forName("UTF-8"));
    }
    private String strPad;
    private String strTerm;
    private String strTermAndPad;
    private String strTermInclude;
    private StrPadTerm _root;
    private KaitaiStruct _parent;
    public String strPad() { return strPad; }
    public String strTerm() { return strTerm; }
    public String strTermAndPad() { return strTermAndPad; }
    public String strTermInclude() { return strTermInclude; }
    public StrPadTerm _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
