// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class RepeatEosBytes : KaitaiStruct
    {
        public static RepeatEosBytes FromFile(string fileName)
        {
            return new RepeatEosBytes(new KaitaiStream(fileName));
        }

        public RepeatEosBytes(KaitaiStream p__io, KaitaiStruct p__parent = null, RepeatEosBytes p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _records = new List<byte[]>();
            {
                var i = 0;
                while (!m_io.IsEof) {
                    _records.Add(m_io.ReadBytes(5));
                    i++;
                }
            }
        }
        public List<byte[]> Records { get { return _records; } }
        public RepeatEosBytes M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private List<byte[]> _records;
        private RepeatEosBytes m_root;
        private KaitaiStruct m_parent;
    }
}
