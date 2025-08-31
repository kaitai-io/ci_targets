// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.StandardCharsets;
import java.util.List;

public class RepeatUntilS4 extends KaitaiStruct {
    public static RepeatUntilS4 fromFile(String fileName) throws IOException {
        return new RepeatUntilS4(new ByteBufferKaitaiStream(fileName));
    }

    public RepeatUntilS4(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatUntilS4(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public RepeatUntilS4(KaitaiStream _io, KaitaiStruct _parent, RepeatUntilS4 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.entries = new ArrayList<Integer>();
        {
            int _it;
            int i = 0;
            do {
                _it = this._io.readS4le();
                this.entries.add(_it);
                i++;
            } while (!(_it == -1));
        }
        this.afterall = new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.US_ASCII);
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.entries.size(); i++) {
        }
    }
    private List<Integer> entries;
    private String afterall;
    private RepeatUntilS4 _root;
    private KaitaiStruct _parent;
    public List<Integer> entries() { return entries; }
    public String afterall() { return afterall; }
    public RepeatUntilS4 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
