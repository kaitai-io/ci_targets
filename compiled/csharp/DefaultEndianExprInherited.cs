// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;
using System;

namespace Kaitai
{
    public partial class DefaultEndianExprInherited : KaitaiStruct
    {
        public static DefaultEndianExprInherited FromFile(string fileName)
        {
            return new DefaultEndianExprInherited(new KaitaiStream(fileName));
        }

        public DefaultEndianExprInherited(KaitaiStream p__io, KaitaiStruct p__parent = null, DefaultEndianExprInherited p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
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

            public Doc(KaitaiStream p__io, DefaultEndianExprInherited p__parent = null, DefaultEndianExprInherited p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
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
                public MainObj(KaitaiStream p__io, DefaultEndianExprInherited.Doc p__parent = null, DefaultEndianExprInherited p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                    {
                        byte[] on = M_Parent.Indicator;
                        if ((KaitaiStream.ByteArrayCompare(on, new byte[] { 73, 73 }) == 0))
                        {
                            m_isLe = (bool) (true);
                        }
                        else
                        {
                            m_isLe = (bool) (false);
                        }
                    }

                    if (m_isLe == null) {
                        throw new UndecidedEndiannessError();
                    } else if (m_isLe == true) {
                        _readLE();
                    } else {
                        _readBE();
                    }
                }
                private void _readLE()
                {
                    _insides = new SubObj(m_io, this, m_root, m_isLe);
                }
                private void _readBE()
                {
                    _insides = new SubObj(m_io, this, m_root, m_isLe);
                }
                public partial class SubObj : KaitaiStruct
                {
                    public static SubObj FromFile(string fileName)
                    {
                        return new SubObj(new KaitaiStream(fileName));
                    }

                    private bool? m_isLe;
                    public SubObj(KaitaiStream p__io, DefaultEndianExprInherited.Doc.MainObj p__parent = null, DefaultEndianExprInherited p__root = null, bool? isLe = null) : base(p__io)
                    {
                        m_parent = p__parent;
                        m_root = p__root;
                        m_isLe = isLe;
                        _read();
                    }
                    private void _read()
                    {

                        if (m_isLe == null) {
                            throw new UndecidedEndiannessError();
                        } else if (m_isLe == true) {
                            _readLE();
                        } else {
                            _readBE();
                        }
                    }
                    private void _readLE()
                    {
                        _someInt = m_io.ReadU4le();
                        _more = new SubsubObj(m_io, this, m_root, m_isLe);
                    }
                    private void _readBE()
                    {
                        _someInt = m_io.ReadU4be();
                        _more = new SubsubObj(m_io, this, m_root, m_isLe);
                    }
                    public partial class SubsubObj : KaitaiStruct
                    {
                        public static SubsubObj FromFile(string fileName)
                        {
                            return new SubsubObj(new KaitaiStream(fileName));
                        }

                        private bool? m_isLe;
                        public SubsubObj(KaitaiStream p__io, DefaultEndianExprInherited.Doc.MainObj.SubObj p__parent = null, DefaultEndianExprInherited p__root = null, bool? isLe = null) : base(p__io)
                        {
                            m_parent = p__parent;
                            m_root = p__root;
                            m_isLe = isLe;
                            f_someInst = false;
                            _read();
                        }
                        private void _read()
                        {

                            if (m_isLe == null) {
                                throw new UndecidedEndiannessError();
                            } else if (m_isLe == true) {
                                _readLE();
                            } else {
                                _readBE();
                            }
                        }
                        private void _readLE()
                        {
                            _someInt1 = m_io.ReadU2le();
                            _someInt2 = m_io.ReadU2le();
                        }
                        private void _readBE()
                        {
                            _someInt1 = m_io.ReadU2be();
                            _someInt2 = m_io.ReadU2be();
                        }
                        private bool f_someInst;
                        private uint _someInst;
                        public uint SomeInst
                        {
                            get
                            {
                                if (f_someInst)
                                    return _someInst;
                                f_someInst = true;
                                long _pos = m_io.Pos;
                                m_io.Seek(2);
                                if (m_isLe == true) {
                                    _someInst = m_io.ReadU4le();
                                } else {
                                    _someInst = m_io.ReadU4be();
                                }
                                m_io.Seek(_pos);
                                return _someInst;
                            }
                        }
                        private ushort _someInt1;
                        private ushort _someInt2;
                        private DefaultEndianExprInherited m_root;
                        private DefaultEndianExprInherited.Doc.MainObj.SubObj m_parent;
                        public ushort SomeInt1 { get { return _someInt1; } }
                        public ushort SomeInt2 { get { return _someInt2; } }
                        public DefaultEndianExprInherited M_Root { get { return m_root; } }
                        public DefaultEndianExprInherited.Doc.MainObj.SubObj M_Parent { get { return m_parent; } }
                    }
                    private uint _someInt;
                    private SubsubObj _more;
                    private DefaultEndianExprInherited m_root;
                    private DefaultEndianExprInherited.Doc.MainObj m_parent;
                    public uint SomeInt { get { return _someInt; } }
                    public SubsubObj More { get { return _more; } }
                    public DefaultEndianExprInherited M_Root { get { return m_root; } }
                    public DefaultEndianExprInherited.Doc.MainObj M_Parent { get { return m_parent; } }
                }
                private SubObj _insides;
                private DefaultEndianExprInherited m_root;
                private DefaultEndianExprInherited.Doc m_parent;
                public SubObj Insides { get { return _insides; } }
                public DefaultEndianExprInherited M_Root { get { return m_root; } }
                public DefaultEndianExprInherited.Doc M_Parent { get { return m_parent; } }
            }
            private byte[] _indicator;
            private MainObj _main;
            private DefaultEndianExprInherited m_root;
            private DefaultEndianExprInherited m_parent;
            public byte[] Indicator { get { return _indicator; } }
            public MainObj Main { get { return _main; } }
            public DefaultEndianExprInherited M_Root { get { return m_root; } }
            public DefaultEndianExprInherited M_Parent { get { return m_parent; } }
        }
        private List<Doc> _docs;
        private DefaultEndianExprInherited m_root;
        private KaitaiStruct m_parent;
        public List<Doc> Docs { get { return _docs; } }
        public DefaultEndianExprInherited M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
