// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class SwitchRepeatExprInvalid : KaitaiStruct
    {
        public static SwitchRepeatExprInvalid FromFile(string fileName)
        {
            return new SwitchRepeatExprInvalid(new KaitaiStream(fileName));
        }

        public SwitchRepeatExprInvalid(KaitaiStream p__io, KaitaiStruct p__parent = null, SwitchRepeatExprInvalid p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _codes = new List<byte>();
            for (var i = 0; i < 3; i++)
            {
                _codes.Add(m_io.ReadU1());
            }
            __raw_body = new List<byte[]>();
            _body = new List<object>();
            for (var i = 0; i < 3; i++)
            {
                switch (Codes[i]) {
                case 1: {
                    __raw_body.Add(m_io.ReadBytes(4));
                    var io___raw_body = new KaitaiStream(__raw_body[__raw_body.Count - 1]);
                    _body.Add(new One(io___raw_body, this, m_root));
                    break;
                }
                case 2: {
                    __raw_body.Add(m_io.ReadBytes(4));
                    var io___raw_body = new KaitaiStream(__raw_body[__raw_body.Count - 1]);
                    _body.Add(new Two(io___raw_body, this, m_root));
                    break;
                }
                default: {
                    _body.Add(m_io.ReadBytes(4));
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

            public One(KaitaiStream p__io, SwitchRepeatExprInvalid p__parent = null, SwitchRepeatExprInvalid p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _first = m_io.ReadBytesFull();
            }
            public byte[] First { get { return _first; } }
            public SwitchRepeatExprInvalid M_Root { get { return m_root; } }
            public SwitchRepeatExprInvalid M_Parent { get { return m_parent; } }
            private byte[] _first;
            private SwitchRepeatExprInvalid m_root;
            private SwitchRepeatExprInvalid m_parent;
        }
        public partial class Two : KaitaiStruct
        {
            public static Two FromFile(string fileName)
            {
                return new Two(new KaitaiStream(fileName));
            }

            public Two(KaitaiStream p__io, SwitchRepeatExprInvalid p__parent = null, SwitchRepeatExprInvalid p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _second = m_io.ReadBytesFull();
            }
            public byte[] Second { get { return _second; } }
            public SwitchRepeatExprInvalid M_Root { get { return m_root; } }
            public SwitchRepeatExprInvalid M_Parent { get { return m_parent; } }
            private byte[] _second;
            private SwitchRepeatExprInvalid m_root;
            private SwitchRepeatExprInvalid m_parent;
        }
        public List<byte> Codes { get { return _codes; } }
        public List<object> Body { get { return _body; } }
        public SwitchRepeatExprInvalid M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public List<byte[]> M_RawBody { get { return __raw_body; } }
        private List<byte> _codes;
        private List<object> _body;
        private SwitchRepeatExprInvalid m_root;
        private KaitaiStruct m_parent;
        private List<byte[]> __raw_body;
    }
}
