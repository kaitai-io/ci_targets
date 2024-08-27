// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class SwitchManualEnumInvalidElse : KaitaiStruct
    {
        public static SwitchManualEnumInvalidElse FromFile(string fileName)
        {
            return new SwitchManualEnumInvalidElse(new KaitaiStream(fileName));
        }

        public SwitchManualEnumInvalidElse(KaitaiStream p__io, KaitaiStruct p__parent = null, SwitchManualEnumInvalidElse p__root = null) : base(p__io)
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


            public enum CodeEnum
            {
                Intval = 73,
                Strval = 83,
            }
            public Opcode(KaitaiStream p__io, SwitchManualEnumInvalidElse p__parent = null, SwitchManualEnumInvalidElse p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _code = ((CodeEnum) m_io.ReadU1());
                switch (Code) {
                case CodeEnum.Intval: {
                    _body = new Intval(m_io, this, m_root);
                    break;
                }
                case CodeEnum.Strval: {
                    _body = new Strval(m_io, this, m_root);
                    break;
                }
                default: {
                    _body = new Defval(m_io, this, m_root);
                    break;
                }
                }
            }
            public partial class Defval : KaitaiStruct
            {
                public static Defval FromFile(string fileName)
                {
                    return new Defval(new KaitaiStream(fileName));
                }

                public Defval(KaitaiStream p__io, SwitchManualEnumInvalidElse.Opcode p__parent = null, SwitchManualEnumInvalidElse p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    f_value = false;
                    _read();
                }
                private void _read()
                {
                }
                private bool f_value;
                private sbyte _value;
                public sbyte Value
                {
                    get
                    {
                        if (f_value)
                            return _value;
                        f_value = true;
                        _value = (sbyte) (123);
                        return _value;
                    }
                }
                private SwitchManualEnumInvalidElse m_root;
                private SwitchManualEnumInvalidElse.Opcode m_parent;
                public SwitchManualEnumInvalidElse M_Root { get { return m_root; } }
                public SwitchManualEnumInvalidElse.Opcode M_Parent { get { return m_parent; } }
            }
            public partial class Intval : KaitaiStruct
            {
                public static Intval FromFile(string fileName)
                {
                    return new Intval(new KaitaiStream(fileName));
                }

                public Intval(KaitaiStream p__io, SwitchManualEnumInvalidElse.Opcode p__parent = null, SwitchManualEnumInvalidElse p__root = null) : base(p__io)
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
                private SwitchManualEnumInvalidElse m_root;
                private SwitchManualEnumInvalidElse.Opcode m_parent;
                public byte Value { get { return _value; } }
                public SwitchManualEnumInvalidElse M_Root { get { return m_root; } }
                public SwitchManualEnumInvalidElse.Opcode M_Parent { get { return m_parent; } }
            }
            public partial class Strval : KaitaiStruct
            {
                public static Strval FromFile(string fileName)
                {
                    return new Strval(new KaitaiStream(fileName));
                }

                public Strval(KaitaiStream p__io, SwitchManualEnumInvalidElse.Opcode p__parent = null, SwitchManualEnumInvalidElse p__root = null) : base(p__io)
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
                private SwitchManualEnumInvalidElse m_root;
                private SwitchManualEnumInvalidElse.Opcode m_parent;
                public string Value { get { return _value; } }
                public SwitchManualEnumInvalidElse M_Root { get { return m_root; } }
                public SwitchManualEnumInvalidElse.Opcode M_Parent { get { return m_parent; } }
            }
            private CodeEnum _code;
            private KaitaiStruct _body;
            private SwitchManualEnumInvalidElse m_root;
            private SwitchManualEnumInvalidElse m_parent;
            public CodeEnum Code { get { return _code; } }
            public KaitaiStruct Body { get { return _body; } }
            public SwitchManualEnumInvalidElse M_Root { get { return m_root; } }
            public SwitchManualEnumInvalidElse M_Parent { get { return m_parent; } }
        }
        private List<Opcode> _opcodes;
        private SwitchManualEnumInvalidElse m_root;
        private KaitaiStruct m_parent;
        public List<Opcode> Opcodes { get { return _opcodes; } }
        public SwitchManualEnumInvalidElse M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
