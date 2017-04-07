// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;

import java.io.IOException;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.nio.charset.Charset;

public class InstanceStd extends KaitaiStruct {
    public static InstanceStd fromFile(String fileName) throws IOException {
        return new InstanceStd(new KaitaiStream(fileName));
    }

    public InstanceStd(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public InstanceStd(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public InstanceStd(KaitaiStream _io, KaitaiStruct _parent, InstanceStd _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _read();
    }
    private void _read() {
    }
    private String header;
    public String header() {
        if (this.header != null)
            return this.header;
        long _pos = this._io.pos();
        this._io.seek(2);
        this.header = new String(this._io.readBytes(5), Charset.forName("ASCII"));
        this._io.seek(_pos);
        return this.header;
    }
    private InstanceStd _root;
    private KaitaiStruct _parent;
    public InstanceStd _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
