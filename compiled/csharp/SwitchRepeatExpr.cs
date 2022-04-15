// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class SwitchRepeatExpr : KaitaiStruct
    {
        public static SwitchRepeatExpr FromFile(string fileName)
        {
            return new SwitchRepeatExpr(new KaitaiStream(fileName));
        }

        public SwitchRepeatExpr(KaitaiStream p__io, KaitaiStruct p__parent = null, SwitchRepeatExpr p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _code = m_io.ReadU1();
            _size = m_io.ReadU4le();
            __raw_body = new List<byte[]>();
            _body = new List<object>();
            for (var i = 0; i < 1; i++)
            {
                switch (Code) {
                case 17: {
                    __raw_body.Add(m_io.ReadBytes(Size));
                    var io___raw_body = new KaitaiStream(__raw_body[__raw_body.Count - 1]);
                    _body.Add(new One(io___raw_body, this, m_root));
                    break;
                }
                case 34: {
                    __raw_body.Add(m_io.ReadBytes(Size));
                    var io___raw_body = new KaitaiStream(__raw_body[__raw_body.Count - 1]);
                    _body.Add(new Two(io___raw_body, this, m_root));
                    break;
                }
                default: {
                    _body.Add(m_io.ReadBytes(Size));
                    break;
                }
                }
            }
        }
        public partial class One : KaitaiStruct
        {
            public static One FromFile(string fileName)
            {
                return new One(new KaitaiStream(fileName));
            }

            public One(KaitaiStream p__io, SwitchRepeatExpr p__parent = null, SwitchRepeatExpr p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _first = m_io.ReadBytesFull();
            }
            private byte[] _first;
            private SwitchRepeatExpr m_root;
            private SwitchRepeatExpr m_parent;
            public byte[] First { get { return _first; } }
            public SwitchRepeatExpr M_Root { get { return m_root; } }
            public SwitchRepeatExpr M_Parent { get { return m_parent; } }
        }
        public partial class Two : KaitaiStruct
        {
            public static Two FromFile(string fileName)
            {
                return new Two(new KaitaiStream(fileName));
            }

            public Two(KaitaiStream p__io, SwitchRepeatExpr p__parent = null, SwitchRepeatExpr p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _second = m_io.ReadBytesFull();
            }
            private byte[] _second;
            private SwitchRepeatExpr m_root;
            private SwitchRepeatExpr m_parent;
            public byte[] Second { get { return _second; } }
            public SwitchRepeatExpr M_Root { get { return m_root; } }
            public SwitchRepeatExpr M_Parent { get { return m_parent; } }
        }
        private byte _code;
        private uint _size;
        private List<object> _body;
        private SwitchRepeatExpr m_root;
        private KaitaiStruct m_parent;
        private List<byte[]> __raw_body;
        public byte Code { get { return _code; } }
        public uint Size { get { return _size; } }
        public List<object> Body { get { return _body; } }
        public SwitchRepeatExpr M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public List<byte[]> M_RawBody { get { return __raw_body; } }
    }
}
