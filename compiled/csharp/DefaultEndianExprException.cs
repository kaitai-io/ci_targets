// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;
using System;

namespace Kaitai
{
    public partial class DefaultEndianExprException : KaitaiStruct
    {
        public static DefaultEndianExprException FromFile(string fileName)
        {
            return new DefaultEndianExprException(new KaitaiStream(fileName));
        }

        public DefaultEndianExprException(KaitaiStream io, KaitaiStruct parent = null, DefaultEndianExprException root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _read();
        }
        private void _read() {
            _docs = new List<Doc>();
            while (!m_io.IsEof) {
                _docs.Add(new Doc(m_io, this, m_root));
            }
        }
        public partial class Doc : KaitaiStruct
        {
            public static Doc FromFile(string fileName)
            {
                return new Doc(new KaitaiStream(fileName));
            }

            public Doc(KaitaiStream io, DefaultEndianExprException parent = null, DefaultEndianExprException root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
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

                public MainObj(KaitaiStream io, DefaultEndianExprException.Doc parent = null, DefaultEndianExprException root = null) : base(io)
                {
                    m_parent = parent;
                    m_root = root;
                    _read();
                }
                private void _read() {
                    {
                        byte[] on = M_Parent.Indicator;
                        if ((KaitaiStream.ByteArrayCompare(on, new byte[] { 73, 73 }) == 0))
                        {
                            m_isLe = (bool) (true);
                        }
                        else if ((KaitaiStream.ByteArrayCompare(on, new byte[] { 77, 77 }) == 0))
                        {
                            m_isLe = (bool) (false);
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
                private uint _someInt;
                private ushort _someIntBe;
                private ushort _someIntLe;
                private DefaultEndianExprException m_root;
                private DefaultEndianExprException.Doc m_parent;
                public uint SomeInt { get { return _someInt; } }
                public ushort SomeIntBe { get { return _someIntBe; } }
                public ushort SomeIntLe { get { return _someIntLe; } }
                public DefaultEndianExprException M_Root { get { return m_root; } }
                public DefaultEndianExprException.Doc M_Parent { get { return m_parent; } }
            }
            private byte[] _indicator;
            private MainObj _main;
            private DefaultEndianExprException m_root;
            private DefaultEndianExprException m_parent;
            public byte[] Indicator { get { return _indicator; } }
            public MainObj Main { get { return _main; } }
            public DefaultEndianExprException M_Root { get { return m_root; } }
            public DefaultEndianExprException M_Parent { get { return m_parent; } }
        }
        private List<Doc> _docs;
        private DefaultEndianExprException m_root;
        private KaitaiStruct m_parent;
        public List<Doc> Docs { get { return _docs; } }
        public DefaultEndianExprException M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
