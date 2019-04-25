// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class SwitchBytearray : KaitaiStruct
    {
        public static SwitchBytearray FromFile(string fileName)
        {
            return new SwitchBytearray(new KaitaiStream(fileName));
        }

        public SwitchBytearray(KaitaiStream p__io, KaitaiStruct p__parent = null, SwitchBytearray p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _opcodes = new List<Opcode>();
            {
                var i = 0;
                while (!m_io.IsEof) {
                    _opcodes.Add(new Opcode(m_io, this, m_root));
                    i++;
                }
            }
        }
        public partial class Opcode : KaitaiStruct
        {
            public static Opcode FromFile(string fileName)
            {
                return new Opcode(new KaitaiStream(fileName));
            }

            public Opcode(KaitaiStream p__io, SwitchBytearray p__parent = null, SwitchBytearray p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _code = m_io.ReadBytes(1);
                {
                    byte[] on = Code;
                    if ((KaitaiStream.ByteArrayCompare(on, new byte[] { 73 }) == 0))
                    {
                        _body = new Intval(m_io, this, m_root);
                    }
                    else if ((KaitaiStream.ByteArrayCompare(on, new byte[] { 83 }) == 0))
                    {
                        _body = new Strval(m_io, this, m_root);
                    }
                }
            }
            public partial class Intval : KaitaiStruct
            {
                public static Intval FromFile(string fileName)
                {
                    return new Intval(new KaitaiStream(fileName));
                }

                public Intval(KaitaiStream p__io, SwitchBytearray.Opcode p__parent = null, SwitchBytearray p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                    _value = m_io.ReadU1();
                }
                private byte _value;
                private SwitchBytearray m_root;
                private SwitchBytearray.Opcode m_parent;
                public byte Value { get { return _value; } }
                public SwitchBytearray M_Root { get { return m_root; } }
                public SwitchBytearray.Opcode M_Parent { get { return m_parent; } }
            }
            public partial class Strval : KaitaiStruct
            {
                public static Strval FromFile(string fileName)
                {
                    return new Strval(new KaitaiStream(fileName));
                }

                public Strval(KaitaiStream p__io, SwitchBytearray.Opcode p__parent = null, SwitchBytearray p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                    _value = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytesTerm(0, false, true, true));
                }
                private string _value;
                private SwitchBytearray m_root;
                private SwitchBytearray.Opcode m_parent;
                public string Value { get { return _value; } }
                public SwitchBytearray M_Root { get { return m_root; } }
                public SwitchBytearray.Opcode M_Parent { get { return m_parent; } }
            }
            private byte[] _code;
            private KaitaiStruct _body;
            private SwitchBytearray m_root;
            private SwitchBytearray m_parent;
            public byte[] Code { get { return _code; } }
            public KaitaiStruct Body { get { return _body; } }
            public SwitchBytearray M_Root { get { return m_root; } }
            public SwitchBytearray M_Parent { get { return m_parent; } }
        }
        private List<Opcode> _opcodes;
        private SwitchBytearray m_root;
        private KaitaiStruct m_parent;
        public List<Opcode> Opcodes { get { return _opcodes; } }
        public SwitchBytearray M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
