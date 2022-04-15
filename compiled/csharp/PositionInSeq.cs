// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class PositionInSeq : KaitaiStruct
    {
        public static PositionInSeq FromFile(string fileName)
        {
            return new PositionInSeq(new KaitaiStream(fileName));
        }

        public PositionInSeq(KaitaiStream p__io, KaitaiStruct p__parent = null, PositionInSeq p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_header = false;
            _read();
        }
        private void _read()
        {
            _numbers = new List<byte>();
            for (var i = 0; i < Header.QtyNumbers; i++)
            {
                _numbers.Add(m_io.ReadU1());
            }
        }
        public partial class HeaderObj : KaitaiStruct
        {
            public static HeaderObj FromFile(string fileName)
            {
                return new HeaderObj(new KaitaiStream(fileName));
            }

            public HeaderObj(KaitaiStream p__io, PositionInSeq p__parent = null, PositionInSeq p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _qtyNumbers = m_io.ReadU4le();
            }
            private uint _qtyNumbers;
            private PositionInSeq m_root;
            private PositionInSeq m_parent;
            public uint QtyNumbers { get { return _qtyNumbers; } }
            public PositionInSeq M_Root { get { return m_root; } }
            public PositionInSeq M_Parent { get { return m_parent; } }
        }
        private bool f_header;
        private HeaderObj _header;
        public HeaderObj Header
        {
            get
            {
                if (f_header)
                    return _header;
                long _pos = m_io.Pos;
                m_io.Seek(16);
                _header = new HeaderObj(m_io, this, m_root);
                m_io.Seek(_pos);
                f_header = true;
                return _header;
            }
        }
        private List<byte> _numbers;
        private PositionInSeq m_root;
        private KaitaiStruct m_parent;
        public List<byte> Numbers { get { return _numbers; } }
        public PositionInSeq M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
