// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;
using System;

namespace Kaitai
{
    public partial class DefaultEndianExprIsBe : KaitaiStruct
    {
        public static DefaultEndianExprIsBe FromFile(string fileName)
        {
            return new DefaultEndianExprIsBe(new KaitaiStream(fileName));
        }

        public DefaultEndianExprIsBe(KaitaiStream p__io, KaitaiStruct p__parent = null, DefaultEndianExprIsBe p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read() {
            _docs = new List<Doc>();
            {
                var i = 0;
                while (!m_io.IsEof) {
                    _docs.Add(new Doc(m_io, this, m_root));
                    i++;
                }
            }
        }
        public partial class Doc : KaitaiStruct
        {
            public static Doc FromFile(string fileName)
            {
                return new Doc(new KaitaiStream(fileName));
            }

            public Doc(KaitaiStream p__io, DefaultEndianExprIsBe p__parent = null, DefaultEndianExprIsBe p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read() {
                _indicator = m_io.ReadBytes(2);
                _main = new MainObj(m_io, this, m_root);
            }
            public partial class MainObj : KaitaiStruct
            {
                public static MainObj FromFile(string fileName)
                {
                    return new MainObj(new KaitaiStream(fileName));
                }

                private bool? m_isLe;
                public MainObj(KaitaiStream p__io, DefaultEndianExprIsBe.Doc p__parent = null, DefaultEndianExprIsBe p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    f_instInt = false;
                    f_instSub = false;
                    _read();
                }
                private void _read() {
                    {
                        byte[] on = M_Parent.Indicator;
                        if ((KaitaiStream.ByteArrayCompare(on, new byte[] { 77, 77 }) == 0))
                        {
                            m_isLe = (bool) (false);
                        }
                        else
                        {
                            m_isLe = (bool) (true);
                        }
                    }

                    if (m_isLe == null) {
                        throw new Exception("Unable to decide on endianness");
                    } else if (m_isLe == true) {
                        _readLE();
                    } else {
                        _readBE();
                    }
                }
                private void _readLE() {
                    _someInt = m_io.ReadU4le();
                    _someIntBe = m_io.ReadU2be();
                    _someIntLe = m_io.ReadU2le();
                }
                private void _readBE() {
                    _someInt = m_io.ReadU4be();
                    _someIntBe = m_io.ReadU2be();
                    _someIntLe = m_io.ReadU2le();
                }
                public partial class SubMainObj : KaitaiStruct
                {
                    public static SubMainObj FromFile(string fileName)
                    {
                        return new SubMainObj(new KaitaiStream(fileName));
                    }

                    private bool? m_isLe;
                    public SubMainObj(KaitaiStream p__io, DefaultEndianExprIsBe.Doc.MainObj p__parent = null, DefaultEndianExprIsBe p__root = null, bool? isLe = null) : base(p__io)
                    {
                        m_parent = p__parent;
                        m_root = p__root;
                        m_isLe = isLe;
                        _read();
                    }
                    private void _read() {

                        if (m_isLe == null) {
                            throw new Exception("Unable to decide on endianness");
                        } else if (m_isLe == true) {
                            _readLE();
                        } else {
                            _readBE();
                        }
                    }
                    private void _readLE() {
                        _foo = m_io.ReadU4le();
                    }
                    private void _readBE() {
                        _foo = m_io.ReadU4be();
                    }
                    private uint _foo;
                    private DefaultEndianExprIsBe m_root;
                    private DefaultEndianExprIsBe.Doc.MainObj m_parent;
                    public uint Foo { get { return _foo; } }
                    public DefaultEndianExprIsBe M_Root { get { return m_root; } }
                    public DefaultEndianExprIsBe.Doc.MainObj M_Parent { get { return m_parent; } }
                }
                private bool f_instInt;
                private uint _instInt;
                public uint InstInt
                {
                    get
                    {
                        if (f_instInt)
                            return _instInt;
                        long _pos = m_io.Pos;
                        m_io.Seek(2);
                        if (m_isLe == true) {
                            _instInt = m_io.ReadU4le();
                        } else {
                            _instInt = m_io.ReadU4be();
                        }
                        m_io.Seek(_pos);
                        f_instInt = true;
                        return _instInt;
                    }
                }
                private bool f_instSub;
                private SubMainObj _instSub;
                public SubMainObj InstSub
                {
                    get
                    {
                        if (f_instSub)
                            return _instSub;
                        long _pos = m_io.Pos;
                        m_io.Seek(2);
                        if (m_isLe == true) {
                            _instSub = new SubMainObj(m_io, this, m_root, m_isLe);
                        } else {
                            _instSub = new SubMainObj(m_io, this, m_root, m_isLe);
                        }
                        m_io.Seek(_pos);
                        f_instSub = true;
                        return _instSub;
                    }
                }
                private uint _someInt;
                private ushort _someIntBe;
                private ushort _someIntLe;
                private DefaultEndianExprIsBe m_root;
                private DefaultEndianExprIsBe.Doc m_parent;
                public uint SomeInt { get { return _someInt; } }
                public ushort SomeIntBe { get { return _someIntBe; } }
                public ushort SomeIntLe { get { return _someIntLe; } }
                public DefaultEndianExprIsBe M_Root { get { return m_root; } }
                public DefaultEndianExprIsBe.Doc M_Parent { get { return m_parent; } }
            }
            private byte[] _indicator;
            private MainObj _main;
            private DefaultEndianExprIsBe m_root;
            private DefaultEndianExprIsBe m_parent;
            public byte[] Indicator { get { return _indicator; } }
            public MainObj Main { get { return _main; } }
            public DefaultEndianExprIsBe M_Root { get { return m_root; } }
            public DefaultEndianExprIsBe M_Parent { get { return m_parent; } }
        }
        private List<Doc> _docs;
        private DefaultEndianExprIsBe m_root;
        private KaitaiStruct m_parent;
        public List<Doc> Docs { get { return _docs; } }
        public DefaultEndianExprIsBe M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
